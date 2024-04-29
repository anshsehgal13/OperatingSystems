#include <iostream>
#include <algorithm>

using namespace std;

// Process structure
struct Process {
    int id;
    int arrival_time;
    int burst_time;
};

// Function to compare processes based on burst time
bool compareProcesses(const Process &p1, const Process &p2) {
    return p1.burst_time < p2.burst_time;
}

// SJF Scheduling function
void SJF(Process processes[], int n) {
    // Sort processes based on burst time
    sort(processes, processes + n, compareProcesses);

    int total_time = 0;

    cout << "Order of execution: ";
    for (int i = 0; i < n; ++i) {
        total_time += processes[i].burst_time;
        cout << processes[i].id << " ";

        if (i < n - 1)
            cout << "-> ";
    }
    cout << endl;

    // Calculate average waiting time
    double average_waiting_time = 0;
    double total_waiting_time = 0;
    for (int i = 0; i < n; ++i) {
        total_waiting_time += total_time - processes[i].arrival_time - processes[i].burst_time;
    }
    average_waiting_time = total_waiting_time / n;

    cout << "Average Waiting Time: " << average_waiting_time << endl;
}

int main() {
    // Number of processes
    int n;
    cout << "Enter the number of processes: ";
    cin >> n;

    // Input processes
    Process processes[n];
    for (int i = 0; i < n; ++i) {
        cout << "Enter arrival time and burst time for process " << i + 1 << ": ";
        cin >> processes[i].arrival_time >> processes[i].burst_time;
        processes[i].id = i + 1;
    }

    // Apply SJF scheduling
    SJF(processes, n);

    return 0;
}