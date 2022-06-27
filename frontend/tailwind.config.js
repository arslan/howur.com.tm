module.exports = {
  content: [
    "./pages/**/*.{js,ts,jsx,tsx}",
    "./components/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {},
    colors: {
      white: "#fff",
      grey: "#DBDBDB",
      greyDark: "#7A7A7A",
      black: "#10181F",
      red: "#CD3202",
    },
    screens: {
      sm: "100px",
      // => @media (min-width: 100px) { ... }

      md: "640px",
      // => @media (min-width: 640px) { ... }

      lg: "768px",
      // => @media (min-width: 768px) { ... }
      xl: "1026px",
      // => @media (min-width: 1026px) { ... }

      "2xl": "1280px",
      // => @media (min-width: 1280px) { ... }

      "3xl": "1536px",
      // => @media (min-width: 1536px) { ... }
    },

    plugins: [],
  },
};
