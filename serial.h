/*
serial.h

Copyright (C) 2015 Juha Aaltonen

This file is part of standalone gdb stub for Raspberry Pi 2B.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef SERIAL_H_
#define SERIAL_H_

#include "io_dev.h"

void serial_init(io_device *device);
void serial_start();
int serial_get_char();
int serial_put_char(char c);
int serial_get_string(char *st, char delim, int n);
int serial_put_string(char *st, int n);
int serial_read(char *buf, int n);
int serial_write(char *buf, int n);
//void serial_enable_ctrlc(int enable);
int serial_tx_free();
int serial_rx_used();

// serial interrupt handler
void enable_uart0_ints();
void disable_uart0_ints();
unsigned int serial_get_rx_dropped();
unsigned int serial_get_rx_ovr();

// waits until transmit fifo is empty and writes the string
// directly in the tx fifo and returns the number of chars
// actually sent
// MAX 16 chars at a time
int serial_raw_puts(char *str);

#endif /* SERIAL_H_ */
