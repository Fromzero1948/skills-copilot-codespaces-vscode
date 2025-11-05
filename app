<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>简易计数器</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        
        .container {
            background: white;
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        
        h1 {
            color: #333;
            margin-bottom: 30px;
            font-size: 28px;
        }
        
        .counter-display {
            font-size: 80px;
            font-weight: bold;
            color: #667eea;
            margin: 30px 0;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        }
        
        .button-group {
            display: flex;
            gap: 15px;
            margin-bottom: 20px;
        }
        
        button {
            flex: 1;
            padding: 20px;
            font-size: 24px;
            border: none;
            border-radius: 12px;
            cursor: pointer;
            transition: all 0.3s;
            font-weight: bold;
            color: white;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }
        
        .btn-minus {
            background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
        }
        
        .btn-plus {
            background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);
        }
        
        .btn-reset {
            background: linear-gradient(135deg, #43e97b 0%, #38f9d7 100%);
            width: 100%;
            margin-top: 10px;
        }
        
        button:active {
            transform: scale(0.95);
        }
        
        button:hover {
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
        }
        
        .info {
            color: #666;
            font-size: 14px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>📱 简易计数器</h1>
        <div class="counter-display" id="counter">0</div>
        <div class="button-group">
            <button class="btn-minus" onclick="decrease()">➖</button>
            <button class="btn-plus" onclick="increase()">➕</button>
        </div>
        <button class="btn-reset" onclick="reset()">🔄 重置</button>
        <div class="info">点击按钮来增加或减少数字</div>
    </div>

    <script>
        let count = 0;
        const counterDisplay = document.getElementById('counter');
        
        // 从本地存储加载计数
        if (localStorage.getItem('counter')) {
            count = parseInt(localStorage.getItem('counter'));
            counterDisplay.textContent = count;
        }
        
        function increase() {
            count++;
            updateDisplay();
        }
        
        function decrease() {
            count--;
            updateDisplay();
        }
        
        function reset() {
            count = 0;
            updateDisplay();
        }
        
        function updateDisplay() {
            counterDisplay.textContent = count;
            localStorage.setItem('counter', count);
            
            // 添加动画效果
            counterDisplay.style.transform = 'scale(1.2)';
            setTimeout(() => {
                counterDisplay.style.transform = 'scale(1)';
            }, 200);
        }
        
        // 添加过渡效果
        counterDisplay.style.transition = 'transform 0.2s';
    </script>
</body>
</html>