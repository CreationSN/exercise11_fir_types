# Exercise 11 – FIR Filter Types

## 1. Overview
This project is about studying **four types of FIR (Finite Impulse Response) filters** in MATLAB.  
Each filter has a different type of symmetry and length.

| Filter | Type | Symmetry | Length |
|---------|------|-----------|---------|
| h1 | Type I | Symmetric | Even |
| h2 | Type II | Symmetric | Odd |
| h3 | Type III | Antisymmetric | Even |
| h4 | Type IV | Antisymmetric | Odd |

---

## 2. What I Did
- Created four impulse responses (`h1`, `h2`, `h3`, `h4`).
- Used MATLAB functions `freqz`, `unwrap`, and `zplane` to show:
  - **Magnitude Response** – shows how strong each frequency is.  
  - **Phase Response** – shows how the signal phase changes with frequency.  
  - **Zero Plot** – shows where the zeros of the filter are on the z-plane.
- Plotted all four filters in one figure using subplots:
  - Left: Magnitude  
  - Middle: Phase  
  - Right: Zero Plot  

---

## 3. MATLAB Functions Used
- `freqz(h, 1, 512)` → frequency response  
- `unwrap(angle(H))` → unwrapped phase  
- `zplane(h, 1)` → zero locations  
- `subplot()` and `plot()` → to create the figure layout

---

## 4. Results
After running the code, I got one figure with all four filters shown in rows:
- Each row is one FIR type.
- Each column shows Magnitude, Phase, and Zero Plot.

I saved the figure as **results.png**.
