const animation = () => {
  anime.timeline({loop: false})
  .add({
    targets: '.ml15 .word',
    scale: [14,1],
    opacity: [0,1],
    easing: "easeOutCirc",
    duration: 20,
    delay: (el, i) => 1 * i
  })
}
export { animation };
