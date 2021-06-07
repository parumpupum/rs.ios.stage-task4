import Foundation

final class FillWithColor {
    
    func fillWithColor(_ image: [[Int]], _ row: Int, _ column: Int, _ newColor: Int) -> [[Int]] {
        
        let rows = image.count
        let columns = image[0].count
        
        if (row < 0 || row >= rows || column < 0 || column >= columns) {
            return image
        }
        
        var result = image
        
        var visited: [[Bool]] = [[]]
        visited = Array(repeating: Array(repeating: false, count: columns), count: rows)
        
        var nextX : [Int] = [], nextY : [Int] = []
        nextX.append(row)
        nextY.append(column)
        
        while nextX.count != 0 {
            
            let x = nextX[0], y = nextY[0]
            nextX.removeFirst()
            nextY.removeFirst()
            
            result[x][y] = newColor
            visited[x][y] = true
            
            if (x - 1 >= 0 && image[x - 1][y] == image[x][y] && visited[x - 1][y] == false){
                nextX.append(x - 1)
                nextY.append(y)
            }
            if (x + 1 < rows && image[x + 1][y] == image[x][y] && visited[x + 1][y] == false){
                nextX.append(x + 1)
                nextY.append(y)
            }
            if (y - 1 >= 0 && image[x][y - 1] == image[x][y] && visited[x][y - 1] == false){
                nextX.append(x)
                nextY.append(y - 1)
            }
            if (y + 1 < columns && image[x][y + 1] == image[x][y] && visited[x][y + 1] == false){
                nextX.append(x)
                nextY.append(y + 1)
            }
        
        }
        
        return result
        
    }
}
