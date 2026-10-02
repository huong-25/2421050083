def extended_gcd(a, b):
    """
    Thuật toán Euclid mở rộng.
    Trả về (gcd, x, y) sao cho: a*x + b*y = gcd(a, b)
    """
    if b == 0:
        return a, 1, 0
    gcd, x1, y1 = extended_gcd(b, a % b)
    x = y1
    y = x1 - (a // b) * y1
    return gcd, x, y


def mod_inverse(a, n):
    """
    Tính nghịch đảo nhân của a theo modulo n.
    Trả về None nếu không tồn tại (khi gcd(a, n) != 1).
    """
    gcd, x, _ = extended_gcd(a % n, n)
    if gcd != 1:
        return None
    return x % n


# ==== CHƯƠNG TRÌNH CHÍNH ====
if __name__ == "__main__":
    n = int(input("Nhập modulo n: "))
    a = int(input("Nhập số cần tìm nghịch đảo a: "))

    result = mod_inverse(a, n)

    if result is None:
        print(f"Số {a} KHÔNG có nghịch đảo modulo {n} "
              f"(vì gcd({a}, {n}) != 1)")
    else:
        print(f"Nghịch đảo của {a} modulo {n} là: {result}")
        print(f"Kiểm tra lại: ({a} * {result}) mod {n} = {(a * result) % n}")