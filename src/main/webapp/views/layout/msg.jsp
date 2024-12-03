<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.banner {
    position: fixed;
    top: 10px;
    right: -300px; /* Initially hidden off-screen to the right */
    background-color: red;
    color: white;
    padding: 10px 20px;
    font-size: 14px;
    font-weight: bold;
    z-index: 9999;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    transition: right 1s ease-in-out; /* Smooth sliding animation */
}

.banner.show {
    right: 10px; /* Position when the banner is visible */
}
.animated-border {
    position: relative;
    display: inline-block;
    padding: 10px 20px;
    color: white;
    background-image: url('data:image/jpeg;base64,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'); /* Replace with your background image URL */
    background-size: cover;
    background-position: center;
    font-size: 24px;
    text-align: center;
    font-weight: bold;
    z-index: 1;
    text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7); /* Add text shadow */
    border: 2px solid transparent; /* Ensure border is transparent initially */
}

.animated-border::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    border: 2px solid blue; /* Starting color */
    z-index: -1;
    clip-path: inset(0 100% 0 0); /* Initially hide the border */
    animation: borderProgress 10s linear infinite, borderColorChange 10s linear infinite; /* Border movement + color change */
}

@keyframes borderProgress {
    0% {
        clip-path: inset(0 100% 0 0); /* Start from the left */
    }
    25% {
        clip-path: inset(0 0 100% 0); /* Top border */
    }
    50% {
        clip-path: inset(0 0 0 100%); /* Right border */
    }
    75% {
        clip-path: inset(100% 0 0 0); /* Bottom border */
    }
    100% {
        clip-path: inset(0 100% 0 0); /* Back to the start */
    }
}

@keyframes borderColorChange {
    0% {
        border-color: blue; /* Start with blue */
    }
    25% {
        border-color: green; /* Change to green */
    }
    50% {
        border-color: red; /* Change to red */
    }
    75% {
        border-color: orange; /* Change to orange */
    }
    100% {
        border-color: blue; /* Back to blue */
    }
}

</style>
</head>
<body>
    <div class="banner" id="banner">
    <span>Under Development</span>
</div>
    <script>
    function showBanner() {
        const banner = document.getElementById('banner');
        // Show the banner
        banner.classList.add('show');
        
        // After 5 seconds, hide the banner by moving it off-screen
        setTimeout(() => {
            banner.classList.remove('show');
        }, 5000); // Banner will stay for 5 seconds before hiding
    }

    // Function to trigger the banner display every 2 minutes
    function scheduleBanner() {
        showBanner(); // Show the banner on initial load

        setInterval(() => {
            showBanner(); // Show the banner every 2 minutes
        }, 2 * 60 * 100); // 2 minutes interval
    }

    // Start the scheduling when the page loads
    window.onload = scheduleBanner;

    </script>
</body>
</html>