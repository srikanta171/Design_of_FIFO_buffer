(globals
   version = 3
   io_order = clockwise
   space = 20	                  #Spacing between 2 IO pads
   total_edge = 3
	
)

(iopad
    (topleft
     (inst name="CornerCell1"	cell=pfrelr offset=0 orientation=R180 place_status=fixed )
)
(left
	(inst name ="dataIn0"   cell = pc3d01 place_status=fixed)
	(inst name ="dataIn1"   cell = pc3d01 place_status=fixed)
	(inst name ="dataIn2"   cell = pc3d01 place_status=fixed)
	(inst name ="dataIn3"   cell = pc3d01 place_status=fixed)
	(inst name ="dataIn4"   cell = pc3d01 place_status=fixed)
	(inst name ="dataIn5"   cell = pc3d01 place_status=fixed)
	(inst name ="dataIn6"   cell = pc3d01 place_status=fixed)
        (inst name ="dataIn7"   cell = pc3d01 place_status=fixed)

)


(topright
	(inst name="CornerCell2"	cell=pfrelr offset=0 orientation=R90 place_status=fixed )
)


(top
	(inst name ="VDD"    cell = pvdi place_status=fixed)
	(inst name ="sri"   cell = pc3d01 place_status=fixed)
	(inst name ="Fwr"   cell = pc3d01 place_status=fixed)
	(inst name ="Frd"   cell = pc3d01 place_status=fixed)
	(inst name ="Fclk"   cell = pc3d01 place_status=fixed)
	(inst name ="Frst_n"   cell = pc3d01 place_status=fixed)
	(inst name ="bis"   cell = pc3d01 place_status=fixed)
        (inst name ="VSS"   cell = pv0i place_status=fixed)
)



(bottomright

	(inst name="CornerCell3"	cell=pfrelr offset=0 orientation=R0 place_status=fixed )
)

(right
	(inst name ="dataOut0"   cell = pc3d01 place_status=fixed)
	(inst name ="dataOut1"   cell = pc3d01 place_status=fixed)
	(inst name ="dataOut2"   cell = pc3d01 place_status=fixed)
	(inst name ="dataOut3"   cell = pc3d01 place_status=fixed)
	(inst name ="dataOut4"   cell = pc3d01 place_status=fixed)
	(inst name ="dataOut5"   cell = pc3d01 place_status=fixed)
	(inst name ="dataOut6"   cell = pc3d01 place_status=fixed)
        (inst name ="dataOut7"   cell = pc3d01 place_status=fixed)

	

)


(bottomleft

	(inst name="CornerCell4"	cell=pfrelr offset=0 orientation=R270 place_status=fixed )
)

(bottom
	(inst name ="VDDO"    cell = pvda place_status=fixed)
	(inst name ="Ffifo_full"   cell = pc3d01 place_status=fixed)
	(inst name ="Ffifo_empty"   cell = pc3d01 place_status=fixed)
	(inst name ="Ffifo_threshold"   cell = pc3d01 place_status=fixed)
	(inst name ="Ffifo_overflow"   cell = pc3d01 place_status=fixed)
	(inst name ="Ffifo_underflow"   cell = pc3d01 place_status=fixed)
        (inst name ="xyz"   cell = pc3d01 place_status=fixed)
        (inst name ="VSSO"  cell = pv0a place_status=fixed)

)
)


