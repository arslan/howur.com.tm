import Highlighter from "react-highlight-words";
import styles from "../styles/Home.module.css";

const HighlightWords = (props) => {
  return (
    <>
      <Highlighter
        highlightClassName={styles.highlight}
        searchWords={[
        ]}
        autoEscape={true}
        textToHighlight={props.text}
      />
    </>
  );
};

export default HighlightWords;
