# Quantum Computer Simulator (Pyret)

A state-vector quantum circuit simulator for up to 5 qubits, written from scratch in Pyret. Multi-qubit states are built by tensor product, gates are applied as unitary matrices, and a recursive separability test reports whether the final state is entangled.

## Features
- Simulates 1–5 qubits as a 2^n-amplitude state vector
- Gates: Hadamard, Pauli-X, Pauli-Z, CNOT, CZ, SWAP, Toffoli
- Entanglement detection by checking whether the state factors into individual qubits (correctly flags Bell and GHZ states)
- Interactive, keyboard-driven circuit builder
- Unit tests (`check` blocks) for state construction, gate application and entanglement

## How to run
1. Open [code.pyret.org](https://code.pyret.org) and sign in.
2. Paste in `quantum-computer.arr` and click **Run**.
3. Click the canvas and use the keys below.

## Controls
1. Press **0** or **1** to add a qubit in state |0⟩ or |1⟩ (up to 5). Add all qubits *before* adding gates.
2. Press a **letter** to add a gate (up to 7). The available gates depend on how many qubits you have (see table).
3. Press **=** to run the circuit and show the final state vector and whether it is entangled.

q0 is the most significant (leftmost) qubit.

| Qubits | Keys |
|---|---|
| 1 | a = H, b = X, c = Z |
| 2 | a = H(q0), b = H(q1), c = X(q0), d = X(q1), e = Z(q0), f = Z(q1), g = CNOT(q0→q1), h = CNOT(q1→q0), i = CZ, j = SWAP |
| 3 | a/b/c = H(q0/q1/q2), d/e/f = X(q0/q1/q2), g/h/i = Z(q0/q1/q2), j = CNOT(q0→q1), k = Toffoli(q0, q1 → q2) |
| 4–5 | a = H(q0), b = X(q0), c = Z(q0) |

## Example: Bell state
Press `0`, `0`, `a`, `g`, `=`. This gives the final state [0.707, 0, 0, 0.707] and reports "is entangled? true".
