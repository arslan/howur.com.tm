import Highlighter from "react-highlight-words";
import styles from "../styles/Home.module.css";

const HighlightWords = (props) => {
  return (
    <>
      <Highlighter
        highlightClassName={styles.highlight}
        searchWords={[
          "прочность, стойкость и уверенность.",
          "stands for strength, resilience and confidence.",
          "berklik, durnuklylyk we ynam.",
        ]}
        autoEscape={true}
        textToHighlight={props.text}
      />
    </>
  );
};

export default HighlightWords;
