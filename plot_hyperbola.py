import numpy as np
import matplotlib.pyplot as plt

# Hyperbola: x * y = c
c = 4

# Build x values away from zero to avoid division-by-zero
x_neg = np.linspace(-10, -0.1, 1000)
x_pos = np.linspace(0.1, 10, 1000)

y_neg = c / x_neg
y_pos = c / x_pos

plt.figure(figsize=(7, 5))
plt.plot(x_neg, y_neg, label=f"xy = {c}", color="tab:blue")
plt.plot(x_pos, y_pos, color="tab:blue")

plt.axhline(0, color="black", linewidth=0.8)
plt.axvline(0, color="black", linewidth=0.8)
plt.xlim(-10, 10)
plt.ylim(-10, 10)
plt.xlabel("x")
plt.ylabel("y")
plt.title("2D Hyperbola: xy = c")
plt.grid(True, linestyle="--", alpha=0.5)
plt.legend()
plt.tight_layout()

plt.savefig("/home/yono/.openclaw/workspace/hyperbola.png", dpi=150)
print("Saved to /home/yono/.openclaw/workspace/hyperbola.png")
