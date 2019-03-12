#!/usr/bin/env python3


class FRFault(object):
    def __init__(self, id, ip, iter, bit, latency):
        self.id = id
        self.ip = ip
        self.iter = iter
        self.bit = bit
        self.latency = latency

    def __repr__(self):
        return str({'ID': self.id, 'IP': self.ip, 'iter': self.iter, 'bit': self.bit, 'latency': self.latency})

    def __str__(self):
        return str({'ID': self.id, 'IP': self.ip, 'iter': self.iter, 'bit': self.bit, 'latency': self.latency})

    def __lt__(self, other):
        return self.id < other.id
