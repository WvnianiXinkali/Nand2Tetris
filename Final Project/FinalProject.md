# Hack Hardware Platform Simulator CLI Tool  

## **Requirements**  
The CLI tool must:  
1. Accept a `.hack` or `.asm` file as input.  
2. Execute the program contained in the provided file.  
3. Generate a `.json` file containing the final state of the RAM.  
   - The output file name must match the input program’s name.  
4. Accept the number of processor cycles as an argument.  

---

## **Interface**  
The tool should be implemented using **Python 3.11**. Below are examples of how the program should be executed:  

```sh
python -m n2t execute path/to/the/program.hack --cycles 10000
sh
Copy
Edit
python -m n2t execute path/to/the/program.asm --cycles 10000
Output Format
After execution, the program should generate a .json file containing the final state of the RAM in JSON format:

json
Copy
Edit
{
  "RAM": {
    "0": 259,
    "1": 1000,
    "2": 2000,
    "3": 0,
    "4": 0,
    "256": 123,
    "257": 0,
    "258": 12
  }
}
Only registers that the program interacted with should be included in the output file.

Notes
The input file path can be either absolute or relative.
The CLI should be OS-agnostic, meaning it must work on Windows, Linux, and macOS.
The output file must have the same name as the input file but with a .json extension.
The input file is guaranteed to contain a valid program.
Keyboard and screen simulation is not required.
