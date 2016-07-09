F = poly.c
O = poly
pocl:$(F)
	gcc -I/usr/local/include $(F) -o $(O) -lm -lOpenCL /usr/local/pocl/lib/libpoclu.so -Wl,-rpath -Wl,/usr/local/pocl/lib -Ofast /usr/local/lib/libpapi.a
	./$(O)

linux64:$(F)
	gcc -Wall -W -Ofast -I/usr/include/ -L/usr/lib64/ -Wl,-rpath,/usr/lib64/ -o $(O) $(F) -lOpenCL /usr/local/lib/libpapi.a
	./$(O)

mac_64:$(F)
	gcc -Ofast -o $(O) $(F) -framework OpenCL
	./$(O)

clean:
	rm -rf $(O) *~
