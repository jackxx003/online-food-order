<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% if(session.getAttribute("user") == null) { response.sendRedirect("login.jsp"); return; } %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FoodieExpress - Billing System</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <nav class="navbar navbar-dark bg-danger mb-4 shadow">
        <div class="container">
            <span class="navbar-brand mb-0 h1">🍔 FoodieExpress</span>
            <button class="button5" onclick="window.location='login.jsp'">Login</button>
        </div>
    </nav>

    <div class="container">
        <!-- Progress Bar -->
        <div class="progress mb-4" style="height: 25px;">
            <div id="progressBar" class="progress-bar bg-success progress-bar-striped progress-bar-animated"
                role="progressbar" style="width: 33%;">Select Food</div>
        </div>

        <!-- STEP 1: MENU -->
        <div id="step1">
            <h3 class="mb-3 text-secondary">Select your Items</h3>
            <div class="row">
                <div class="col-md-4 mb-3">
                    <div class="card food-card h-100">
                        <img
                            src="burger-on-wooden-table-black-600nw-2049015059.webp" />
                        <div class="card-body text-center">
                            <h5>Classic Burger</h5>
                            <p class="text-danger fw-bold">$10.00</p>
                            <button class="btn btn-primary w-100" onclick="addToCart('Classic Burger', 10)">Add to
                                Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card food-card h-100">
                        <img
                            src="mouth-watering-cheeseburger-with-abundant-melted-cheese.jpg" />
                        <div class="card-body text-center">
                            <h5>Cheeseburger</h5>
                            <p class="text-danger fw-bold">$17.00</p>
                            <button class="btn btn-primary w-100" onclick="addToCart('Cheeseburger', 17)">Add to
                                Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card food-card h-100">
                        <img src="pizza.jpg" />
                        <div class="card-body text-center">
                            <h5>Pizza</h5>
                            <p class="text-danger fw-bold">$12.00</p>
                            <button class="btn btn-primary w-100" onclick="addToCart('Pizza', 12)">Add to
                                Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card food-card h-100">
                        <img src="Pepperoni Pizza.jpg" />
                        <div class="card-body text-center">
                            <h5>Pepperoni Pizza</h5>
                            <p class="text-danger fw-bold">$15.00</p>
                            <button class="btn btn-primary w-100" onclick="addToCart('Pepperoni Pizza', 15)">Add to
                                Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card food-card h-100">
                        <img src="Chicken Salad Sandwich.jpg" />
                        <div class="card-body text-center">
                            <h5>Chicken Salad Sandwich</h5>
                            <p class="text-danger fw-bold">$20.00</p>
                            <button class="btn btn-primary w-100" onclick="addToCart('Chicken Salad Sandwich', 20)">Add
                                to
                                Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card food-card h-100">
                        <img src="hot dog.jpg" />
                        <div class="card-body text-center">
                            <h5>hot dog</h5>
                            <p class="text-danger fw-bold">$14.00</p>
                            <button class="btn btn-primary w-100" onclick="addToCart('hot dog', 14)">Add to
                                Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card food-card h-100">
                        <img src="Pasta.jpg" />
                        <div class="card-body text-center">
                            <h5>Pasta</h5>
                            <p class="text-danger fw-bold">$22.00</p>
                            <button class="btn btn-primary w-100" onclick="addToCart('Pasta', 22)">Add to
                                Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card food-card h-100">
                        <img src="Soft Drink.jpg" />
                        <div class="card-body text-center">
                            <h5>Soft Drink</h5>
                            <p class="text-danger fw-bold">$4.00</p>
                            <button class="btn btn-primary w-100" onclick="addToCart('Soft Drink', 4)">Add to
                                Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card food-card h-100">
                        <img src="Noodle.jpg" />
                        <div class="card-body text-center">
                            <h5>Noodle</h5>
                            <p class="text-danger fw-bold">$13.00</p>
                            <button class="btn btn-primary w-100" onclick="addToCart('Noodle', 13)">Add to
                                Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card food-card h-100">
                        <img src="cup Noodle.jpg" />
                        <div class="card-body text-center">
                            <h5>cup Noodle</h5>
                            <p class="text-danger fw-bold">$15.00</p>
                            <button class="btn btn-primary w-100" onclick="addToCart('cup Noodle', 15)">Add to
                                Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card food-card h-100">
                        <img src="Ketchup.jpg" />
                        <div class="card-body text-center">
                            <h5>Ketchup</h5>
                            <p class="text-danger fw-bold">$1.00</p>
                            <button class="btn btn-primary w-100" onclick="addToCart('Ketchup', 1)">Add to
                                Order</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="card food-card h-100">
                        <img src="Ice Cream.jpg" />
                        <div class="card-body text-center">
                            <h5>Ice Cream</h5>
                            <p class="text-danger fw-bold">$8.00</p>
                            <button class="btn btn-primary w-100" onclick="addToCart('Ice Cream', 8)">Add to
                                Order</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-end mt-4">
                <button class="btn btn-danger btn-lg" onclick="showStep(2)">Review Order & Edit →</button>
            </div>
        </div>

        <!-- STEP 2: REVIEW & EDIT -->
        <div id="step2" class="d-none">
            <div class="d-flex justify-content-between align-items-center mb-3">
                <h3 class="text-secondary">Step 2: Review & Modify Order</h3>
                <button class="btn btn-outline-danger btn-sm" onclick="clearCart()">Clear All</button>
            </div>
            <div class="table-responsive">
                <table class="table table-hover bg-white align-middle shadow-sm">
                    <thead class="table-dark">
                        <tr>
                            <th>Food Item</th>
                            <th>Price</th>
                            <th class="text-center">Quantity</th>
                            <th>Subtotal</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody id="cart-table">
                        <!-- Items injected by JS -->
                    </tbody>
                </table>
            </div>
            <div class="d-flex justify-content-between mt-4">
                <button class="btn btn-secondary" onclick="showStep(1)">← Back to Menu</button>
                <button class="btn btn-danger btn-lg" onclick="showStep(3)">Generate Bill →</button>
            </div>
        </div>

        <!-- STEP 3: FINAL BILL WITH GST -->
        <div id="step3" class="d-none">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card receipt-card shadow-lg p-4 border-0">
                        <div class="text-center mb-4">
                            <h2 class="text-success fw-bold">TAX INVOICE</h2>
                            <p class="text-muted small">FoodieExpress Ltd. | Order #0333</p>
                            <hr class="dashed">
                        </div>

                        <div id="bill-items-list">
                            <!-- Summary list of items -->
                        </div>

                        <hr class="dashed">

                        <div class="d-flex justify-content-between mb-2">
                            <span>Items Total:</span>
                            <span id="final-qty-count">0</span>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <span>Subtotal:</span>
                            <span>$<span id="bill-subtotal">0.00</span></span>
                        </div>
                        <div class="d-flex justify-content-between mb-2 text-primary">
                            <span>GST (5%):</span>
                            <span>$<span id="bill-gst">0.00</span></span>
                        </div>
                        <hr>
                        <div class="d-flex justify-content-between mb-4">
                            <h4 class="fw-bold">Grand Total:</h4>
                            <h4 class="fw-bold text-danger">$<span id="bill-total">0.00</span></h4>
                        </div>

                        <div class="text-center">
                            <button class="btn btn-outline-secondary me-2" onclick="showStep(2)">Edit Order</button>
                            <button class="btn btn-success btn-lg px-5" onclick="finishOrder()">Pay & Place
                                Order</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="script.js"></script>
</body>
<!-- FOOTER SECTION -->
<footer class="footer bg-dark text-white pt-5 pb-3 mt-5">
    <div class="container">
        <div class="row">
            <!-- Brand Section -->
            <div class="col-md-4 mb-4">
                <h4 class="text-danger fw-bold">🍔 FoodieExpress</h4>
                <p class="text-white">
                    Delivering happiness to your doorstep since 2020.
                    We provide the freshest food with the fastest delivery service.
                </p>
            </div>

            <!-- Quick Links -->
            <div class="col-md-4 mb-4">
                <h5 class="mb-3">Quick Links</h5>
                <ul class="list-unstyled">
                    <li><a href="#" class="footer-link">Home</a></li>
                    <li><a href="#" class="footer-link">Full Menu</a></li>
                    <li><a href="#" class="footer-link">Order Tracking</a></li>
                    <li><a href="#" class="footer-link">Support Center</a></li>
                </ul>
            </div>

            <!-- Contact Info Section in Footer -->
            <div class="col-md-4 mb-4">
                <h5 class="mb-3 text-white">Get in Touch</h5>
                <!-- We use the class 'footer-address' to control the color -->
                <p class="footer-address mb-1">📍 123 Gourmet Avenue, Food City</p>
                <p class="footer-address mb-1">📞 +1 234 567 890</p>
                <p class="footer-address">✉️ help@foodieexpress.com</p>

                <div class="mt-3">
                    <a href="#" class="btn btn-outline-light btn-sm rounded-circle me-2">f</a>
                    <a href="#" class="btn btn-outline-light btn-sm rounded-circle me-2">t</a>
                    <a href="#" class="btn btn-outline-light btn-sm rounded-circle">i</a>
                </div>
            </div>


            <hr class="border-secondary">

            <div class="row">
                <div class="col-md-12 text-center">
                    <p class="text-white">
                        &copy; 2023 <span class="text-danger">FoodieExpress</span>. All Rights Reserved.
                        Made with ❤️ for Food Lovers.
                    </p>
                </div>
            </div>
        </div>
</footer>

</html>