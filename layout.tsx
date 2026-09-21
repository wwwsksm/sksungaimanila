import type {Metadata} from "next";import "./globals.css";
export const metadata:Metadata={title:"SK Sungai Manila | Laman Rasmi",description:"Laman rasmi Sekolah Kebangsaan Sungai Manila.",icons:{icon:"/favicon.svg",shortcut:"/favicon.svg"}};
export default function RootLayout({children}:Readonly<{children:React.ReactNode}>){return <html lang="ms"><body>{children}</body></html>}
