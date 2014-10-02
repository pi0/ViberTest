.class Lcom/facebook/Request$Serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/Request$KeyValueSerializer;


# instance fields
.field private firstWrite:Z

.field private final logger:Lcom/facebook/internal/Logger;

.field private final outputStream:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/BufferedOutputStream;Lcom/facebook/internal/Logger;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1673
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    .line 1676
    iput-object p1, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    .line 1677
    iput-object p2, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    .line 1678
    return-void
.end method


# virtual methods
.method public varargs write(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1766
    iget-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    if-eqz v0, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    const-string/jumbo v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1769
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    const-string/jumbo v1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1770
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    .line 1773
    :cond_0
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1774
    return-void
.end method

.method public writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1704
    const-string/jumbo v0, "image/png"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1707
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1708
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    .line 1709
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "<Image>"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1710
    return-void
.end method

.method public writeBytes(Ljava/lang/String;[B)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1713
    const-string/jumbo v0, "content/unknown"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1715
    const-string/jumbo v0, ""

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1716
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    .line 1717
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "<Data: %d>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1718
    return-void
.end method

.method public writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1754
    const-string/jumbo v0, "Content-Disposition: form-data; name=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1755
    if-eqz p2, :cond_0

    .line 1756
    const-string/jumbo v0, "; filename=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1758
    :cond_0
    const-string/jumbo v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1759
    if-eqz p3, :cond_1

    .line 1760
    const-string/jumbo v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Content-Type"

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1762
    :cond_1
    const-string/jumbo v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1763
    return-void
.end method

.method public writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1721
    const-string/jumbo v0, "content/unknown"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    :try_start_0
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1728
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1730
    const/16 v0, 0x2000

    :try_start_2
    new-array v2, v0, [B

    move v0, v4

    .line 1732
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1733
    iget-object v6, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1734
    add-int/2addr v0, v5

    goto :goto_0

    .line 1737
    :cond_0
    if-eqz v1, :cond_1

    .line 1738
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1740
    :cond_1
    if-eqz v3, :cond_2

    .line 1741
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    .line 1744
    :cond_2
    const-string/jumbo v1, ""

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1745
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    .line 1746
    iget-object v1, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "<Data: %d>"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1747
    return-void

    .line 1737
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 1738
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1740
    :cond_3
    if-eqz v2, :cond_4

    .line 1741
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    :cond_4
    throw v0

    .line 1737
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method public varargs writeLine(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1777
    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1778
    const-string/jumbo v0, "\r\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1779
    return-void
.end method

.method public writeObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1681
    #calls: Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z
    invoke-static {p2}, Lcom/facebook/Request;->access$100(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1682
    #calls: Lcom/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {p2}, Lcom/facebook/Request;->access$200(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    :goto_0
    return-void

    .line 1683
    :cond_0
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1684
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1685
    :cond_1
    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    .line 1686
    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeBytes(Ljava/lang/String;[B)V

    goto :goto_0

    .line 1687
    :cond_2
    instance-of v0, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    .line 1688
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 1690
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value is not a supported type: String, Bitmap, byte[]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeRecordBoundary()V
    .locals 4

    .prologue
    .line 1750
    const-string/jumbo v0, "--%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1751
    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1695
    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    const-string/jumbo v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1697
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    .line 1698
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1701
    :cond_0
    return-void
.end method
