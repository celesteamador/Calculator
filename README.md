## First Calculator Smart Contract in Solidity

This calculator uses modifiers, events and functions to do the following:
- Addition
- Substraction
- Multiplication
- Division

The modifiers are applied only to the multiplication and the division.
- Multiplication: In the multiplication the `checknumber` modifier, checks whether the number entered is equal to 10 or not in order to proceed with the operation.
- Division: In the division, the `checkreminder` modifier, checks whether the reminder of the division is 0 or not in order to proceed with the operation.

The functions used where internal and external to provide different functionalities.

Here are some pictures of its functionality once deployed locally:
<img width="1843" height="1172" alt="Screenshot From 2026-02-22 19-07-56" src="https://github.com/user-attachments/assets/58fe03b5-565d-438e-aadb-c88a3256aece" />

Substraction with negative numbers:
<img width="1852" height="1172" alt="Screenshot From 2026-02-22 19-18-41" src="https://github.com/user-attachments/assets/4583bcc4-a139-4386-94ed-2ee8f5ce802d" />

Multiplier function with the first number set to 10 by default.
<img width="1852" height="1172" alt="Screenshot From 2026-02-22 19-20-07" src="https://github.com/user-attachments/assets/f4c2b0f6-5b83-4d8d-8d31-ef50b9dca5ee" />

Multiplier2 function with the modifier.
<img width="1852" height="1172" alt="Screenshot From 2026-02-22 19-21-23" src="https://github.com/user-attachments/assets/f97351e8-7152-4ec8-89a2-a330d963099e" />

Division function with modifier. 
<img width="1747" height="1101" alt="Screenshot From 2026-02-23 13-51-13" src="https://github.com/user-attachments/assets/f8603e7c-6988-4287-836f-9558d92daaff" />
