import networkx as nx
import matplotlib.pyplot as plt
import heapq

# Implementación del algoritmo de Dijkstra para encontrar el 
# camino más corto desde el vértice inicial hasta todos los demás vértices
def dijkstra(graph, source):
    distances = {vertex: float('inf') for vertex in graph}
    distances[source] = 0

    priority_queue = [(0, source)]

    while priority_queue:
        dist, current_vertex = heapq.heappop(priority_queue)

        if dist > distances[current_vertex]:
            continue

        for neighbor, weight in graph[current_vertex].items():
            new_distance = distances[current_vertex] + weight
            if new_distance < distances[neighbor]:
                distances[neighbor] = new_distance
                heapq.heappush(priority_queue, (new_distance, neighbor))

    return distances

if __name__ == "__main__":
    
    graph = {
        0: {1: 2, 2: 6},
        1: {3: 5},
        2: {3: 8},
        3: {4: 10,5: 15},
        4: {5: 6,6: 2},
        5: {4: 6,6: 6},
        6:{}
    }

    source_vertex = 0
    shortest_distances = dijkstra(graph, source_vertex)

    # Crear el grafo con NetworkX
    G = nx.DiGraph()
    for vertex, neighbors in graph.items():
        for neighbor, weight in neighbors.items():
            G.add_edge(vertex, neighbor, weight=weight)

    # Calcular el layout para la visualización
    pos = nx.spring_layout(G)

    # Etiquetas de los nodos con las distancias más cortas
    node_labels = {vertex: f"{vertex}\nDist: {distance}" for vertex, distance in shortest_distances.items()}

    # Dibujar el grafo
    nx.draw(G, pos, with_labels=True, node_color='lightblue', node_size=1500, font_size=8, labels=node_labels)
    edge_labels = nx.get_edge_attributes(G, 'weight')
    nx.draw_networkx_edge_labels(G, pos, edge_labels=edge_labels, font_size=8)

    plt.title("Grafo con caminos más cortos usando Dijkstra")
    plt.show()