import React from "react";
import "@/index.css";

interface LayoutProps {
  children: React.ReactNode;
}

const Layout: React.FC<LayoutProps> = ({ children }) => {
  return (
    <>
      <main>{children}</main>
    </>
  );
};

export { Layout };
