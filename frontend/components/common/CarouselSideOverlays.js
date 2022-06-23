const SideOverlayLeft = () => {
  return (
    <div className="w-14 h-full absolute top-0 right-0 -mr-16 z-10 bg-gradient-to-l from-white pointer-events-none"></div>
  )
}

const SideOverlayRight = () => {
  return (
    <div className="w-14 h-full absolute top-0 left-0 -ml-16 z-10 bg-gradient-to-r from-white pointer-events-none"></div>
  )
}

export { SideOverlayLeft }
export { SideOverlayRight }
