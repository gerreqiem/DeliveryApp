using C3.Models;
namespace C3.Services
{
    public class AStarSolver
    {
        public List<int> FindRoute(double[,] graph, Dictionary<int, Point> nodes, Point depot, List<Order> orders, List<int> nodeKeys)
        {
            int n = graph.GetLength(0);
            int indexDepot = nodeKeys.IndexOf(-1);
            if (indexDepot == -1)
                throw new Exception("Depot key (-1) not found in nodeKeys");
            var orderIdToIndex = orders.ToDictionary(o => o.ID, o => nodeKeys.IndexOf(o.ID));
            List<int> routeIndices = new List<int>();
            HashSet<int> visited = new HashSet<int>();
            int currentIndex = indexDepot;
            routeIndices.Add(currentIndex);
            while (visited.Count < orders.Count)
            {
                double bestScore = double.MaxValue;
                int nextIndex = -1;
                foreach (var order in orders)
                {
                    int idx = orderIdToIndex[order.ID];
                    if (visited.Contains(idx))
                        continue;
                    double priorityFactor = 1.0 / (order.Priority + 0.01);
                    double dist = graph[currentIndex, idx];
                    double score = dist * priorityFactor;
                    if (score < bestScore)
                    {
                        bestScore = score;
                        nextIndex = idx;
                    }
                }
                if (nextIndex == -1)
                    break;
                routeIndices.Add(nextIndex);
                visited.Add(nextIndex);
                currentIndex = nextIndex;
            }
            routeIndices.Add(indexDepot);
            List<int> route = routeIndices.Select(i => nodeKeys[i]).ToList();
            return route;
        }
    }
}