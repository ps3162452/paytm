package com.google.zxing.client.j2se;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.ReaderException;
import com.google.zxing.common.GlobalHistogramBinarizer;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import n.NPStringFog;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes66.dex */
public final class GUIRunner extends JFrame {
    private final JLabel imageLabel = new JLabel();
    private final JTextArea textArea = new JTextArea();

    private GUIRunner() {
        this.textArea.setEditable(false);
        this.textArea.setMaximumSize(new Dimension(HttpStatus.SC_BAD_REQUEST, 200));
        JPanel jPanel = new JPanel();
        jPanel.setLayout(new FlowLayout());
        jPanel.add(this.imageLabel);
        jPanel.add(this.textArea);
        setTitle(NPStringFog.decode(new byte[]{57, 109, 90, 15, 2}, "c53ae5", -1.636255E8f));
        setSize(HttpStatus.SC_BAD_REQUEST, HttpStatus.SC_BAD_REQUEST);
        setDefaultCloseOperation(3);
        setContentPane(jPanel);
        setLocationRelativeTo(null);
    }

    private void chooseImage() throws MalformedURLException {
        JFileChooser jFileChooser = new JFileChooser();
        jFileChooser.showOpenDialog(this);
        File selectedFile = jFileChooser.getSelectedFile();
        ImageIcon imageIcon = new ImageIcon(selectedFile.toURI().toURL());
        setSize(imageIcon.getIconWidth(), imageIcon.getIconHeight() + 100);
        this.imageLabel.setIcon(imageIcon);
        this.textArea.setText(getDecodeText(selectedFile));
    }

    private static String getDecodeText(File file) {
        try {
            BufferedImage bufferedImage = ImageIO.read(file);
            if (bufferedImage == null) {
                return NPStringFog.decode(new byte[]{123, 13, 17, 94, 86, 18, 86, 13, 16, 18, 86, 87, 91, 13, 0, 87, 18, 91, 85, 3, 3, 87}, "8bd222", true);
            }
            try {
                return new MultiFormatReader().decode(new BinaryBitmap(new GlobalHistogramBinarizer(new BufferedImageLuminanceSource(bufferedImage)))).getText();
            } catch (ReaderException e) {
                return e.toString();
            }
        } catch (IOException e2) {
            return e2.toString();
        }
    }

    public static void main(String[] strArr) throws MalformedURLException {
        GUIRunner gUIRunner = new GUIRunner();
        gUIRunner.setVisible(true);
        gUIRunner.chooseImage();
    }
}
