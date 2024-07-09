start_address = 0x50000004
end_address = 0x50000190

print("Valid addresses in the range from 0x50000004 to 0x50000190:")
for address in range(start_address, end_address + 1, 4):
    print(hex(address))
