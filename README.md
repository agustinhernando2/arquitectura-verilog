
### 🧩 **Datos técnicos de la Basys 3**

* **Familia:** Artix-7
* **Dispositivo (FPGA):** `XC7A35T`
* **Package:** `CPG236`
* **Velocidad (Speed Grade):** `-1`

---

### ⚙️ **Configuración paso a paso en Vivado**

1. **Nuevo Proyecto → New Project Wizard**

   * Nombre: `Basys3_Project` (por ejemplo)
   * Tipo: **RTL Project**

2. **Default Part**

    En la pestaña **Parts** y seleccioná:

    | Campo       | Valor           |
    | ----------- | --------------- |
    | **Family**  | Artix-7         |
    | **Package** | CPG236          |
    | **Speed**   | -1              |
    | **Part**    | xc7a35tcpg236-1 |

---

### 💡 Consejo

Si no ves la placa **Basys 3** en la lista de *Boards*, necesitás instalar los archivos de soporte de Digilent.

Podés hacerlo así:

1. Descargá el archivo desde
   🔗 [https://digilent.com/reference/programmable-logic/vivado-board-files](https://digilent.com/reference/programmable-logic/vivado-board-files)
2. Extraé el contenido en la carpeta:

   ```
   C:\Xilinx\Vivado\<version>\data\boards\board_files\
   ```
3. Reiniciá Vivado y la Basys 3 aparecerá en la lista.

---
