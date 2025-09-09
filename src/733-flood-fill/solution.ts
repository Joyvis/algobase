function floodFill(
    image: number[][],
    sr: number,
    sc: number,
    color: number,
    source: number = image[sr][sc]
): number[][] {
    if(sr < 0 || sr > image.length - 1) return image;
    if(sc < 0 || sc > image[0].length - 1) return image;
    if(image[sr][sc] != source) return image;
    if(image[sr][sc] === color) return image;

    image[sr][sc] = color;

    const directions = [[1, 0], [-1, 0], [0, 1], [0, -1]];
    for (let i = 0; i < directions.length; i++) {
        const [dr, dc] = directions[i];
        floodFill(image, sr + dr, sc + dc, color, source);
    }

    return image
};
