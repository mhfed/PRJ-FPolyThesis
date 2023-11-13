import { StrictMode } from 'react';

import ReactDOM from 'react-dom/client';
import { RouteObject, RouterProvider, createBrowserRouter } from 'react-router-dom';
import App from './App';
import { RootAdminRouter, RootClientRouter, RootAuthRouter, RootChatRouter } from './routes';
import { AppProvider } from './AppProvider';
import { Toaster } from 'react-hot-toast';

//Define all routes here
const routes: RouteObject[] = [...RootClientRouter, ...RootAdminRouter, ...RootAuthRouter, ...RootChatRouter];

const router = createBrowserRouter(routes, {
  // basename: process.env.PUBLIC_URL,
});

ReactDOM.createRoot(document.getElementById('app') as HTMLElement).render(
  <StrictMode>
    <AppProvider>
      <App>
        <RouterProvider router={router} />
        <Toaster />
      </App>
    </AppProvider>
  </StrictMode>,
);
