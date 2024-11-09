import turtle

# Configuración inicial de la pantalla
screen = turtle.Screen()
screen.bgcolor("white")
screen.title("Girasol")

# Configuración de la tortuga
girasol = turtle.Turtle()
girasol.speed(0)  # Máxima velocidad de dibujo

# Función para dibujar un pétalo
def dibujar_petalo(turtle, radio, angulo):
    turtle.circle(radio, angulo)
    turtle.left(180 - angulo)
    turtle.circle(radio, angulo)
    turtle.left(180 - angulo)

# Dibujo de los pétalos del girasol
def dibujar_girasol(num_petalos):
    girasol.color("orange")
    girasol.width(2)
    for _ in range(num_petalos):
        girasol.begin_fill()
        dibujar_petalo(girasol, 50, 60)  # Radio y ángulo ajustados para pétalos más pequeños
        girasol.end_fill()
        girasol.left(360 / num_petalos)  # Ajuste del ángulo para distribuir los pétalos

# Dibujo del centro del girasol
def dibujar_centro():
    girasol.penup()
    girasol.goto(0, -20)  # Ajusta el centro para alinearlo mejor con los pétalos
    girasol.pendown()
    girasol.color("yellow")
    girasol.begin_fill()
    girasol.circle(20)  # Radio más pequeño para un centro visible
    girasol.end_fill()

# Dibujo del girasol
dibujar_centro()
girasol.setheading(0)  # Asegura que la tortuga empieza de cara hacia la derecha
girasol.penup()
girasol.goto(0, 0)  # Asegura que la tortuga comienza en el centro
girasol.pendown()
dibujar_girasol(18)  # Ajuste en el número de pétalos para mejor distribución

# Oculta la tortuga y muestra la ventana
girasol.hideturtle()
turtle.done()

