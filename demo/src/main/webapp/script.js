let cart = [];
const GST_PERCENTAGE = 0.05; // 5% GST

// 1. Add item
function addToCart(name, price) {
    const existingItem = cart.find(item => item.name === name);
    if (existingItem) {
        existingItem.quantity += 1;
    } else {
        cart.push({ name: name, price: price, quantity: 1 });
    }
    alert(name + " added to order!");
}

// 2. Step Navigation
function showStep(stepNumber) {
    document.getElementById('step1').classList.add('d-none');
    document.getElementById('step2').classList.add('d-none');
    document.getElementById('step3').classList.add('d-none');
    document.getElementById('step' + stepNumber).classList.remove('d-none');

    const progressBar = document.getElementById('progressBar');
    if (stepNumber === 1) {
        progressBar.style.width = "33%";
        progressBar.innerText = "Step 1: Select Food";
    } else if (stepNumber === 2) {
        progressBar.style.width = "66%";
        progressBar.innerText = "Step 2: Review Order";
        renderCart();
    } else if (stepNumber === 3) {
        progressBar.style.width = "100%";
        progressBar.innerText = "Step 3: Final Bill";
        generateBill();
    }
}

// 3. Render Table for Review (Step 2)
function renderCart() {
    const tableBody = document.getElementById('cart-table');
    tableBody.innerHTML = "";

    if (cart.length === 0) {
        tableBody.innerHTML = "<tr><td colspan='5' class='text-center'>Your cart is empty!</td></tr>";
        return;
    }

    cart.forEach((item, index) => {
        const subtotal = item.price * item.quantity;
        tableBody.innerHTML += `
            <tr>
                <td><strong>${item.name}</strong></td>
                <td>$${item.price.toFixed(2)}</td>
                <td class="text-center">
                    <button class="btn btn-sm btn-outline-dark qty-btn" onclick="updateQty(${index}, -1)">-</button>
                    <span class="mx-3 fw-bold">${item.quantity}</span>
                    <button class="btn btn-sm btn-outline-dark qty-btn" onclick="updateQty(${index}, 1)">+</button>
                </td>
                <td>$${subtotal.toFixed(2)}</td>
                <td><button class="btn btn-danger btn-sm" onclick="removeItem(${index})">Delete</button></td>
            </tr>
        `;
    });
}

// 4. Update Qty & Delete logic
function updateQty(index, change) {
    cart[index].quantity += change;
    if (cart[index].quantity <= 0) removeItem(index);
    else renderCart();
}

function removeItem(index) {
    cart.splice(index, 1);
    renderCart();
}

function clearCart() {
    if(confirm("Clear order?")) { cart = []; renderCart(); }
}

// 5. BILL GENERATION LOGIC (Step 3)
function generateBill() {
    const billItemsList = document.getElementById('bill-items-list');
    billItemsList.innerHTML = "";
    
    let subtotal = 0;
    let totalQty = 0;

    cart.forEach(item => {
        const itemTotal = item.price * item.quantity;
        subtotal += itemTotal;
        totalQty += item.quantity;

        // Add line to bill
        billItemsList.innerHTML += `
            <div class="d-flex justify-content-between small">
                <span>${item.name} x ${item.quantity}</span>
                <span>$${itemTotal.toFixed(2)}</span>
            </div>
        `;
    });

    const gstAmount = subtotal * GST_PERCENTAGE;
    const grandTotal = subtotal + gstAmount;

    // Update UI
    document.getElementById('final-qty-count').innerText = totalQty;
    document.getElementById('bill-subtotal').innerText = subtotal.toFixed(2);
    document.getElementById('bill-gst').innerText = gstAmount.toFixed(2);
    document.getElementById('bill-total').innerText = grandTotal.toFixed(2);
}

function finishOrder() {
    if(cart.length === 0) {
        alert("Cart is empty!");
    } else {
        alert("Payment Successful! Your order is being prepared.");
        cart = [];
        showStep(1);
    }
}