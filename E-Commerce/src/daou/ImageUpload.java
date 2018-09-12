package daou;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)

public class ImageUpload {

	public void imgPath(String imgpath,String SAVE_DIR,Part file)
	{
			// image parsing....
			String filepath = "E:\\wspa\\E-Commerce\\WebContent\\Product" + File.separator + SAVE_DIR;
			File directory = new File(filepath);
			if (!directory.exists()) {
				directory.mkdir();
			}
			Part part=null;
			String path = extractpath(part);
			String filename = path.substring(path.lastIndexOf("\\") + 1, path.length());
			imgpath = filepath + File.separator + filename;
			try {
				part.write(imgpath);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	}
		private String extractpath(Part part) {
			String Content_dis = part.getHeader("Content-Disposition");
			String items[] = Content_dis.split(";");
			for (String x : items) {
				if (x.trim().startsWith("filename")) {
					return x.substring(x.indexOf("=") + 2, x.length() - 1);
				}
			}
			return null;
		}

}
