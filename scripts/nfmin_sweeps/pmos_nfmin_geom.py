import pandas as pd
import matplotlib.pyplot as plt
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parent.parent

RESULTS_DIR = REPO_ROOT / "results" / "nfmin_sweeps"

jd = pd.read_csv(RESULTS_DIR / "pmos_geom_jd.txt", sep=r"\s+")
nf = pd.read_csv(RESULTS_DIR / "pmos_geom_nf.txt", sep=r"\s+")

data = pd.merge(jd, nf, on=["W_m", "L_m", "VSG"])

data["W_um"] = data["W_m"] * 1e6
data["L_um"] = data["L_m"] * 1e6

print(data)

plt.figure()

for (w, l), group in data.groupby(["W_um", "L_um"]):
    group = group.sort_values("JD_mA_per_um")
    plt.semilogx(
        group["JD_mA_per_um"],
        group["NFmin_dB"],
        marker="o",
        label=f"W={w:.2g}um, L={l:.2g}um"
    )

plt.xlabel("Jd [mA/um]")
plt.ylabel("NFmin [dB]")
plt.title("PMOS NFmin vs Drain Current Density, Geometry Sweep")
plt.grid(True, which="both")
plt.legend()
plt.show()