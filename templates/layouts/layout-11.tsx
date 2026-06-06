import React from 'react';

interface LayoutProps {
  children: React.ReactNode;
}

export const Layout$i: React.FC<LayoutProps> = ({ children }) => {
  return (
    <div className="layout-$i">
      <header>Header $i</header>
      <main>{children}</main>
      <footer>Footer $i</footer>
    </div>
  );
};

export default Layout$i;
