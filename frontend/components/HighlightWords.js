import Highlighter from "react-highlight-words";
import styles from "../styles/Home.module.css";

const HighlightWords = (props) => {
  return (
    <>
      <Highlighter
        highlightClassName={styles.Highlight}
        searchWords={[
          "прочность, стойкость и уверенность.",
          "stands for strength, resilience and confidence.",
          "güýç, çydamlylyk we ynam diýmekdir.",
        ]}
        autoEscape={true}
        textToHighlight={props.text}
      />
    </>
  );
};

export default HighlightWords;
