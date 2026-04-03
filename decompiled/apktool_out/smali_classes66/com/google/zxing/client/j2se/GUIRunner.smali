.class public final Lcom/google/zxing/client/j2se/GUIRunner;
.super Ljavax/swing/JFrame;


# instance fields
.field private final imageLabel:Ljavax/swing/JLabel;

.field private final textArea:Ljavax/swing/JTextArea;


# direct methods
.method private constructor <init>()V
    .locals 5

    const/16 v4, 0x190

    invoke-direct {p0}, Ljavax/swing/JFrame;-><init>()V

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/client/j2se/GUIRunner;->imageLabel:Ljavax/swing/JLabel;

    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/client/j2se/GUIRunner;->textArea:Ljavax/swing/JTextArea;

    iget-object v0, p0, Lcom/google/zxing/client/j2se/GUIRunner;->textArea:Ljavax/swing/JTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setEditable(Z)V

    iget-object v0, p0, Lcom/google/zxing/client/j2se/GUIRunner;->textArea:Ljavax/swing/JTextArea;

    new-instance v1, Ljava/awt/Dimension;

    const/16 v2, 0xc8

    invoke-direct {v1, v4, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setMaximumSize(Ljava/awt/Dimension;)V

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    new-instance v1, Ljava/awt/FlowLayout;

    invoke-direct {v1}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v1, p0, Lcom/google/zxing/client/j2se/GUIRunner;->imageLabel:Ljavax/swing/JLabel;

    invoke-virtual {v0, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v1, p0, Lcom/google/zxing/client/j2se/GUIRunner;->textArea:Ljavax/swing/JTextArea;

    invoke-virtual {v0, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c53ae5"

    const v3, -0x32e3f45e

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/j2se/GUIRunner;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v4}, Lcom/google/zxing/client/j2se/GUIRunner;->setSize(II)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/j2se/GUIRunner;->setDefaultCloseOperation(I)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/j2se/GUIRunner;->setContentPane(Ljava/awt/Container;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/j2se/GUIRunner;->setLocationRelativeTo(Ljava/awt/Component;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x39t
        0x6dt
        0x5at
        0xft
        0x2t
    .end array-data
.end method

.method private chooseImage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    new-instance v0, Ljavax/swing/JFileChooser;

    invoke-direct {v0}, Ljavax/swing/JFileChooser;-><init>()V

    invoke-virtual {v0, p0}, Ljavax/swing/JFileChooser;->showOpenDialog(Ljava/awt/Component;)I

    invoke-virtual {v0}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljavax/swing/ImageIcon;

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V

    invoke-interface {v1}, Ljavax/swing/Icon;->getIconWidth()I

    move-result v2

    invoke-interface {v1}, Ljavax/swing/Icon;->getIconHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x64

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/client/j2se/GUIRunner;->setSize(II)V

    iget-object v2, p0, Lcom/google/zxing/client/j2se/GUIRunner;->imageLabel:Ljavax/swing/JLabel;

    invoke-virtual {v2, v1}, Ljavax/swing/JLabel;->setIcon(Ljavax/swing/Icon;)V

    invoke-static {v0}, Lcom/google/zxing/client/j2se/GUIRunner;->getDecodeText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/client/j2se/GUIRunner;->textArea:Ljavax/swing/JTextArea;

    invoke-virtual {v1, v0}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private static getDecodeText(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {p0}, Ljavax/imageio/ImageIO;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8bd222"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    new-instance v3, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;

    invoke-direct {v3, v0}, Lcom/google/zxing/client/j2se/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    :try_start_1
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/google/zxing/ReaderException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 1
        0x7bt
        0xdt
        0x11t
        0x5et
        0x56t
        0x12t
        0x56t
        0xdt
        0x10t
        0x12t
        0x56t
        0x57t
        0x5bt
        0xdt
        0x0t
        0x57t
        0x12t
        0x5bt
        0x55t
        0x3t
        0x3t
        0x57t
    .end array-data
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    new-instance v0, Lcom/google/zxing/client/j2se/GUIRunner;

    invoke-direct {v0}, Lcom/google/zxing/client/j2se/GUIRunner;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/j2se/GUIRunner;->setVisible(Z)V

    invoke-direct {v0}, Lcom/google/zxing/client/j2se/GUIRunner;->chooseImage()V

    return-void
.end method
