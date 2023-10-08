# Design_of_FIFO_buffer
A FIFO buffer is a type of data storage that operates on a first-in, first-out basis. It typically uses an array of contiguous memory to store data.
it stand for first in first out
similar to RAM but here we can write and read the data in a conjugative manner i.e whatever the data written in that order we can read the data only.

this is the difference between ram and fifo

Types of FIFO
# Asynchronous
separate clock for read and write operation
mainly used to communicate two devices that have different frequencies of operation

let microprocessor is working at 200mhz frequence and peripheral device is working at 100 MHz
frequency.

in communication 200 - 100 = 100 no of data is lost during communication, to solve this problem we need depth 100 of FIFO. 

less depth fifo in not useful
higher than 100 depth fifo is useful but not economical.

data should not be continuous , it be burst (clearly not understand).

# Synchronous
single clock for read and write operation. 

Depth calculation:
suppose one microprocessor is communicating  with a peripheral device.

