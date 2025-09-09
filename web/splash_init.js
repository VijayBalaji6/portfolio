// init.js
document.body.style.background = 'linear-gradient(to bottom right, #2c3a87, #0061C7)';

const mainScript = document.createElement('link');
mainScript.rel = 'preload';
mainScript.as = 'script';
mainScript.href = 'flutter_bootstrap.js';
document.head.appendChild(mainScript);

const loadingText = document.getElementById('loading-text');

setTimeout(() => {
  loadingText.textContent = 'Please wait...';
  loadingText.style.opacity = '1';
  loadingText.classList.add('pulse');
}, 3000);

setTimeout(() => {
  loadingText.textContent = 'Almost there...';
  loadingText.style.opacity = '1';
  loadingText.classList.add('pulse'); 
}, 6000);

window.addEventListener('flutter-first-frame', function() {
  requestAnimationFrame(() => {
    const loadingElement = document.getElementById('loading');
    loadingElement.style.opacity = '0';
    loadingElement.style.transition = 'opacity 0.3s ease-out';
    setTimeout(() => loadingElement.remove(), 300);
  });
});
