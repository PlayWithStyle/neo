package neosoft.jp.tool;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.FilenameUtils;

/**
 * 文件下载的类
 * @author administrator
 *
 */
public final class FileDownLoader {
	private HttpServletResponse response;

	public FileDownLoader(HttpServletResponse response) throws ServletException {
		this.response = response;
	}

	public void downloadFile(String sourceFilePathName) throws IOException,
			ServletException {
		downloadFile(sourceFilePathName, null, null);
	}

	public void downloadFile(String sourceFilePathName, String contentType)
			throws IOException, ServletException {
		downloadFile(sourceFilePathName, contentType, null);
	}

	public void downloadFile(String sourceFilePathName, String contentType,
			String destFileName) throws IOException, ServletException {
		downloadFile(sourceFilePathName, contentType, destFileName, 65000);
	}

	public void downloadFile(String sourceFilePathName, String contentType,
			String destFileName, int blockSize) throws FileNotFoundException,
			IOException, ServletException {
		// 检测文件是否存在
		if (sourceFilePathName == null)
			throw new FileNotFoundException("文件不存在");

		if (sourceFilePathName.equals(""))
			throw new FileNotFoundException("文件不存在");

		File file = new File(sourceFilePathName);
		if (!file.exists())
			throw new FileNotFoundException("文件不存在");

		FileInputStream fileIn = new FileInputStream(file);
		long fileLen = file.length();
		int readBytes = 0;
		int totalRead = 0;
		byte b[] = new byte[blockSize];

		if (null == contentType)
			response.setContentType("application/x-msdownload");
		else if (contentType.length() < 1)
			response.setContentType("application/x-msdownload");
		else
			response.setContentType(contentType);

		response.setContentLength((int) fileLen);

		if (destFileName == null || "".equals(destFileName.trim()))
			response
					.setHeader(
							"Content-Disposition",
							new String(
									("attachment; filename=\"default"
											+ "."
											+FilenameUtils.getExtension(sourceFilePathName) + "\"")
											.getBytes("GBK"), "ISO-8859-1"));
		else
			response.setHeader("Content-Disposition", new String(
					("attachment; filename=\"" + destFileName + "\"")
							.getBytes("GBK"), "ISO-8859-1"));
		OutputStream outStream =  response.getOutputStream();
		if (null == outStream) {
			throw new RuntimeException("页面上下文与流传输模式不符，或者应答无效");
		}
		while ((long) totalRead < fileLen) {
			readBytes = fileIn.read(b, 0, blockSize);
			totalRead += readBytes;
			outStream.write(b, 0, blockSize);
		}
		// close
		fileIn.close();
		outStream.close();
	}

	public void downloadFile(byte[] byteArray, String destFileName)
			throws FileNotFoundException, IOException, ServletException {
		downloadFile(byteArray, destFileName, 65536);
	}

	public void downloadFile(byte[] byteArray, String destFileName,
			int blockSize) throws FileNotFoundException, IOException,
			ServletException {

		// 检测文件是否存在
		if (byteArray == null)
			throw new FileNotFoundException("文件不存在");

		long fileLen = byteArray.length;
		int readBytes = 0;
		int totalRead = 0;
		byte[] temp_byte = new byte[blockSize];
		response.setContentType("application/x-msdownload");
		response.setContentLength((int) fileLen);
		response.setHeader("Content-Disposition", new String(
				("attachment; filename=\"" + destFileName + "\"")
						.getBytes("GBK"), "ISO-8859-1"));

		OutputStream outStream = response.getOutputStream();
		ByteArrayInputStream inputStream = new ByteArrayInputStream(byteArray);
		if (null == outStream) {
			throw new RuntimeException("页面上下文与流传输模式不符，或者应答无效");
		}
		while ((long) totalRead < fileLen) {
			readBytes = inputStream.read(temp_byte, 0, blockSize);
			totalRead += readBytes;
			outStream.write(temp_byte, 0, blockSize);
		}
		// close
		inputStream.close();
		outStream.close();

	}

	public void downloadFile2(byte[] byteArray, String destFileName)
			throws FileNotFoundException, IOException, ServletException {

		// 检测文件是否存在
		if (byteArray == null)
			throw new FileNotFoundException("文件不存在");
		response.setContentType("application/x-msdownload");
		// response.setContentType("application/octet-stream");
		response.setContentLength(byteArray.length);

		response.setHeader("Content-Disposition", new String(
				("attachment; filename=\"" + destFileName + "\"")
						.getBytes("GBK"), "ISO-8859-1"));

		OutputStream outStream = response.getOutputStream();
		ByteArrayInputStream inputStream = new ByteArrayInputStream(byteArray);
		if (null == outStream) {
			throw new RuntimeException("页面上下文与流传输模式不符，或者应答无效");
		}
		outStream.write(byteArray, 0, byteArray.length);

		// close
		inputStream.close();
		outStream.close();

	}

}
