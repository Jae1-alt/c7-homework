

## 1. Running State 🏃

This is the standard operational state.

* **What is happening?** The virtual machine (VM) is fully powered on, the operating system (OS) is running, and your application or workload is actively executing.
* **Resource Allocation:** The instance has its dedicated compute resources (CPU, RAM, network) allocated to it.
* **Key Feature & Billing:** You are charged for the **instance compute time** for every second the instance is in this state. All attached storage (Elastic Block Store or EBS) is also charged.
* **Data Preservation:** All data in the instance's **RAM** and on its EBS volumes is active and immediately accessible.

---

## 2. Stopped State 🛑

This state is similar to a traditional computer **shutdown**.

* **What is happening?** The instance is powered off. AWS releases the underlying compute capacity (CPU and RAM).
* **Resource Retention:**
    * **RAM (Memory):** The contents of the RAM are **lost**. When you start the instance, the OS performs a fresh boot.
    * **Storage:** The **EBS root volume** and any other attached EBS data volumes remain intact and persist.
    * **Network:** The instance retains its **private IP address** and its ID. However, any public IP address automatically assigned on launch is lost (unless you use an Elastic IP).
* **Key Feature & Billing:** You are **not charged for compute time** (CPU/RAM). This is a primary way to save costs when an instance is not needed for a period. You **are still charged for the attached EBS storage** because your data volumes are preserved.

---

## 3. Hibernated State 😴

This state is similar to putting a laptop into **sleep mode** or **suspending to disk**.

* **What is happening?** AWS tells the operating system to perform hibernation (suspend-to-disk).
* **Resource Retention:**
    * **RAM (Memory):** The entire contents of the instance's RAM are **saved** to the EBS root volume before the instance powers down.
    * **Storage:** The EBS root volume (which now contains the RAM contents) and any attached EBS data volumes persist.
* **Key Feature & Benefit:** When you start a hibernated instance, the RAM contents are reloaded from the EBS volume, and the instance resumes exactly where it left off, including all running applications and open files. This means a much **faster start time** compared to a full boot from a Stopped state.
* **Billing:** Like the Stopped state, you are **not charged for compute time**. However, you **are charged for the attached EBS storage**, and this cost is slightly higher because your EBS root volume must be large enough to store the instance's RAM contents.

| Feature                 | Running                   | Stopped             | Hibernated                   |
| :---------------------- | :------------------------ | :------------------ | :--------------------------- |
| **Compute Charges**     | Yes (billed)              | No (saves money)    | No (saves money)             |
| **RAM State Preserved** | Yes                       | **No (lost)**       | **Yes (saved to EBS)**       |
| **EBS Storage Charged** | Yes                       | Yes                 | Yes (including RAM data)     |
| **Start-up Time**       | Instant (already running) | Full OS Boot (slow) | **Resume from State (fast)** |
