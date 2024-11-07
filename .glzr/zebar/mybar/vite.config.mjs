import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

export default defineConfig({
    publicDir: 'public',
    plugins: [react()],
    build: {
        outDir: 'dist',
        target: 'esnext'
    },
    base: './',
});