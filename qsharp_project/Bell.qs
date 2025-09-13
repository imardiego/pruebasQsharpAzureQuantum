
namespace MyQuantumApp {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Canon;

    operation BellState() : Result[] {
        use qubits = Qubit[2];
        H(qubits[0]);
        CNOT(qubits[0], qubits[1]);
        let results = ForEach(MResetZ, qubits);
        return results;
    }
}
