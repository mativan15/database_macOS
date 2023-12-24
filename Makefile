CC = /usr/bin/clang++
CFLAGS = -std=c++17 -stdlib=libc++ -g
SRCS = main.cpp c_boleta.cpp c_canales_v.cpp c_catalogo.cpp c_factura.cpp c_interfaz_a.cpp c_interfaz_v.cpp c_interfaz.cpp c_listas.cpp c_pedidos.cpp c_producto.cpp c_usuario.cpp c_v_producto.cpp c_venta.cpp extra.cpp
OBJS = $(SRCS:.cpp=.o)
TARGET = database_1

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET)

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)
