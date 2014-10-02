.class Lcom/viber/voip/util/upload/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/upload/a/c;

.field private b:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/viber/voip/util/upload/a/c;Ljava/net/Socket;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/viber/voip/util/upload/a/f;->a:Lcom/viber/voip/util/upload/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p2, p0, Lcom/viber/voip/util/upload/a/f;->b:Ljava/net/Socket;

    .line 320
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 321
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 322
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 323
    return-void
.end method

.method private a([BI)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xd

    const/16 v3, 0xa

    const/4 v0, 0x0

    .line 626
    move v1, v0

    .line 627
    :goto_0
    add-int/lit8 v2, v1, 0x3

    if-ge v2, p2, :cond_0

    .line 629
    aget-byte v2, p1, v1

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, p1, v2

    if-ne v2, v3, :cond_1

    .line 630
    add-int/lit8 v0, v1, 0x4

    .line 633
    :cond_0
    return v0

    .line 631
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 721
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 722
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 724
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 725
    sparse-switch v2, :sswitch_data_0

    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 722
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 728
    :sswitch_0
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 741
    :catch_0
    move-exception v0

    .line 743
    const-string/jumbo v0, "400 Bad Request"

    const-string/jumbo v1, "BAD REQUEST: Bad percent-encoding."

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 731
    :sswitch_1
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x3

    :try_start_1
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 732
    add-int/lit8 v0, v0, 0x2

    .line 733
    goto :goto_1

    .line 739
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    .line 725
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method private a([BII)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 680
    const-string/jumbo v0, ""

    .line 681
    if-lez p3, :cond_0

    .line 683
    const-string/jumbo v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 685
    :try_start_0
    const-string/jumbo v2, "NanoHTTPD"

    const-string/jumbo v3, ""

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 686
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 687
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 688
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 689
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 694
    :cond_0
    :goto_0
    return-object v0

    .line 690
    :catch_0
    move-exception v1

    .line 691
    sget-object v2, Lcom/viber/voip/util/upload/a/c;->b:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 490
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 491
    if-nez v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 492
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_1

    .line 494
    const-string/jumbo v0, "400 Bad Request"

    const-string/jumbo v1, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 497
    const-string/jumbo v1, "method"

    invoke-virtual {p2, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_2

    .line 500
    const-string/jumbo v0, "400 Bad Request"

    const-string/jumbo v1, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 505
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 506
    if-ltz v1, :cond_4

    .line 508
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;Ljava/util/Properties;)V

    .line 509
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 517
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 519
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 520
    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 522
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 523
    if-ltz v2, :cond_3

    .line 524
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/messages/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 511
    :cond_4
    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 529
    :cond_5
    const-string/jumbo v0, "uri"

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 533
    const-string/jumbo v1, "500 Internal Server Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 778
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 779
    const-string/jumbo v2, "text/plain"

    const/4 v3, 0x0

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;I)V

    .line 780
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 790
    if-nez p1, :cond_1

    .line 791
    :try_start_0
    new-instance v0, Ljava/lang/Error;

    const-string/jumbo v1, "sendResponse(): Status can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :catch_0
    move-exception v0

    .line 842
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/util/upload/a/f;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/viber/voip/util/upload/a/f;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 794
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HTTP/1.0 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " \r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 797
    if-eqz p2, :cond_2

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Content-Type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 800
    :cond_2
    if-eqz p3, :cond_3

    const-string/jumbo v0, "Date"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 801
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Date: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/util/upload/a/c;->b()Ljava/text/SimpleDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 803
    :cond_4
    if-eqz p3, :cond_5

    .line 806
    invoke-virtual {p3}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 807
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 809
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 810
    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 811
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 815
    :cond_5
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 818
    if-eqz p4, :cond_6

    .line 824
    invoke-static {}, Lcom/viber/voip/util/upload/a/c;->c()I

    move-result v0

    new-array v3, v0, [B

    move v1, p5

    .line 825
    :goto_2
    if-lez v1, :cond_6

    .line 827
    const/4 v4, 0x0

    invoke-static {}, Lcom/viber/voip/util/upload/a/c;->c()I

    move-result v0

    if-le v1, v0, :cond_7

    invoke-static {}, Lcom/viber/voip/util/upload/a/c;->c()I

    move-result v0

    :goto_3
    invoke-virtual {p4, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 829
    if-gtz v0, :cond_8

    .line 834
    :cond_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 835
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 836
    if-eqz p4, :cond_0

    .line 837
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 827
    goto :goto_3

    .line 830
    :cond_8
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 831
    sub-int/2addr v1, v0

    .line 832
    goto :goto_2

    .line 842
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 758
    if-nez p1, :cond_1

    .line 770
    :cond_0
    return-void

    .line 761
    :cond_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v1, "&"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 765
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 766
    if-ltz v2, :cond_2

    .line 767
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/viber/voip/util/upload/a/f;->a([B[B)[I

    move-result-object v3

    .line 547
    const/4 v1, 0x1

    .line 548
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 549
    :goto_0
    if-eqz v0, :cond_5

    .line 551
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 552
    const-string/jumbo v0, "400 Bad Request"

    const-string/jumbo v2, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html"

    invoke-direct {p0, v0, v2}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 554
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 555
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 556
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 558
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 559
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 560
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/viber/voip/messages/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    :cond_1
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 563
    :cond_2
    if-eqz v0, :cond_d

    .line 565
    const-string/jumbo v1, "content-disposition"

    invoke-virtual {v4, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 566
    if-nez v1, :cond_3

    .line 568
    const-string/jumbo v5, "400 Bad Request"

    const-string/jumbo v6, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html"

    invoke-direct {p0, v5, v6}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_3
    new-instance v5, Ljava/util/StringTokenizer;

    const-string/jumbo v6, "; "

    invoke-direct {v5, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 572
    :cond_4
    :goto_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 574
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 575
    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 576
    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 577
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/viber/voip/messages/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v8, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 614
    :catch_0
    move-exception v0

    .line 616
    const-string/jumbo v1, "500 Internal Server Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_5
    return-void

    .line 579
    :cond_6
    :try_start_1
    const-string/jumbo v1, "name"

    invoke-virtual {v6, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 580
    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 582
    const-string/jumbo v1, ""

    .line 583
    const-string/jumbo v7, "content-type"

    invoke-virtual {v4, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 584
    :cond_7
    :goto_3
    if-eqz v1, :cond_c

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_c

    .line 586
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 587
    if-eqz v1, :cond_7

    .line 589
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 590
    const/4 v6, -0x1

    if-ne v4, v6, :cond_8

    .line 591
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 593
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v6, 0x0

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 599
    :cond_9
    array-length v0, v3

    if-le v2, v0, :cond_a

    .line 600
    const-string/jumbo v0, "500 Internal Server Error"

    const-string/jumbo v1, "Error processing request"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_a
    add-int/lit8 v0, v2, -0x2

    aget v0, v3, v0

    invoke-direct {p0, p2, v0}, Lcom/viber/voip/util/upload/a/f;->b([BI)I

    move-result v0

    .line 602
    add-int/lit8 v1, v2, -0x1

    aget v1, v3, v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x4

    invoke-direct {p0, p2, v0, v1}, Lcom/viber/voip/util/upload/a/f;->a([BII)Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-virtual {p5, v5, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string/jumbo v0, "filename"

    invoke-virtual {v6, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 605
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 607
    :cond_b
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 608
    if-eqz v1, :cond_c

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_b

    :cond_c
    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 610
    invoke-virtual {p4, v5, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_d
    move v1, v2

    .line 612
    goto/16 :goto_0
.end method

.method private b([BI)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xd

    const/16 v1, 0xa

    .line 704
    .line 705
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 707
    aget-byte v0, p1, p2

    if-ne v0, v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, p2

    if-ne v0, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, p2

    if-ne v0, v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, p2

    if-ne v0, v1, :cond_1

    .line 710
    :cond_0
    add-int/lit8 v0, p2, 0x1

    return v0

    .line 705
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a([B[B)[I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 641
    .line 643
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v2, v3

    move v4, v1

    .line 644
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_3

    .line 646
    aget-byte v6, p1, v0

    aget-byte v7, p2, v4

    if-ne v6, v7, :cond_2

    .line 648
    if-nez v4, :cond_0

    move v2, v0

    .line 650
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 651
    array-length v6, p2

    if-ne v4, v6, :cond_1

    .line 653
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    move v4, v1

    .line 644
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    :cond_2
    sub-int/2addr v0, v4

    move v2, v3

    move v4, v1

    .line 662
    goto :goto_1

    .line 665
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 666
    :goto_2
    array-length v0, v2

    if-ge v1, v0, :cond_4

    .line 668
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    .line 666
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 670
    :cond_4
    return-object v2
.end method

.method public run()V
    .locals 17

    .prologue
    .line 329
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/util/upload/a/f;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 330
    if-nez v13, :cond_0

    .line 479
    :goto_0
    return-void

    .line 337
    :cond_0
    const/16 v1, 0x2000

    new-array v7, v1, [B

    .line 338
    const/4 v2, 0x0

    .line 339
    const/4 v3, 0x0

    .line 341
    const/4 v1, 0x0

    const/16 v4, 0x2000

    invoke-virtual {v13, v7, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    move/from16 v16, v1

    move v1, v2

    move/from16 v2, v16

    .line 342
    :goto_1
    if-lez v2, :cond_11

    .line 344
    add-int/2addr v3, v2

    .line 345
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3}, Lcom/viber/voip/util/upload/a/f;->a([BI)I

    move-result v1

    .line 346
    if-lez v1, :cond_5

    move v4, v1

    .line 353
    :goto_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 354
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 355
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 356
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 357
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .line 358
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 361
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v5, v10}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V

    .line 362
    const-string/jumbo v2, "method"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 363
    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 365
    const-wide v1, 0x7fffffffffffffffL

    .line 366
    const-string/jumbo v11, "content-length"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v11

    .line 367
    if-eqz v11, :cond_1

    .line 369
    :try_start_1
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v1

    int-to-long v1, v1

    .line 374
    :cond_1
    :goto_3
    :try_start_2
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 375
    if-ge v4, v3, :cond_2

    .line 376
    sub-int v12, v3, v4

    invoke-virtual {v11, v7, v4, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 384
    :cond_2
    if-ge v4, v3, :cond_6

    .line 385
    sub-int v4, v3, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v14, v4

    sub-long/2addr v1, v14

    .line 390
    :cond_3
    :goto_4
    const/16 v4, 0x200

    new-array v4, v4, [B

    .line 391
    :cond_4
    :goto_5
    if-ltz v3, :cond_8

    const-wide/16 v14, 0x0

    cmp-long v3, v1, v14

    if-lez v3, :cond_8

    .line 393
    const/4 v3, 0x0

    const/16 v7, 0x200

    invoke-virtual {v13, v4, v3, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 394
    int-to-long v14, v3

    sub-long/2addr v1, v14

    .line 395
    if-lez v3, :cond_4

    .line 396
    const/4 v7, 0x0

    invoke-virtual {v11, v4, v7, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_5

    .line 460
    :catch_0
    move-exception v1

    .line 464
    :try_start_3
    const-string/jumbo v2, "500 Internal Server Error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 466
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 348
    :cond_5
    rsub-int v2, v3, 0x2000

    :try_start_4
    invoke-virtual {v13, v7, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto/16 :goto_1

    .line 386
    :cond_6
    if-eqz v4, :cond_7

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v4, v1, v14

    if-nez v4, :cond_3

    .line 387
    :cond_7
    const-wide/16 v1, 0x0

    goto :goto_4

    .line 400
    :cond_8
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 403
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 404
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 408
    const-string/jumbo v1, "POST"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 410
    const-string/jumbo v1, ""

    .line 411
    const-string/jumbo v2, "content-type"

    invoke-virtual {v10, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 412
    new-instance v7, Ljava/util/StringTokenizer;

    const-string/jumbo v12, "; "

    invoke-direct {v7, v2, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 414
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 417
    :cond_9
    const-string/jumbo v2, "multipart/form-data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 420
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_a

    .line 421
    const-string/jumbo v1, "400 Bad Request"

    const-string/jumbo v2, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_a
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 423
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v7, "="

    invoke-direct {v2, v1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v7, 0x2

    if-eq v1, v7, :cond_b

    .line 425
    const-string/jumbo v1, "400 Bad Request"

    const-string/jumbo v7, "BAD REQUEST: Content type is multipart/form-data but boundary syntax error. Usage: GET /example/file.html"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_b
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 427
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    .line 429
    invoke-direct/range {v1 .. v6}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V

    .line 447
    :cond_c
    :goto_6
    const-string/jumbo v1, "PUT"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 448
    const-string/jumbo v1, "content"

    const/4 v2, 0x0

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v7}, Lcom/viber/voip/util/upload/a/f;->a([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viber/voip/util/upload/a/f;->a:Lcom/viber/voip/util/upload/a/c;

    move-object v11, v5

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/viber/voip/util/upload/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)Lcom/viber/voip/util/upload/a/g;

    move-result-object v1

    .line 452
    if-nez v1, :cond_10

    .line 453
    const-string/jumbo v1, "500 Internal Server Error"

    const-string/jumbo v2, "SERVER INTERNAL ERROR: Serve() returned a null response."

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :goto_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 458
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 468
    :catch_2
    move-exception v1

    .line 471
    :try_start_5
    const-string/jumbo v2, "500 Internal Server Error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SERVER INTERNAL ERROR: NullPointerException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 472
    :catch_3
    move-exception v1

    goto/16 :goto_0

    .line 434
    :cond_e
    :try_start_6
    const-string/jumbo v2, ""

    .line 435
    const/16 v1, 0x200

    new-array v7, v1, [C

    .line 436
    invoke-virtual {v4, v7}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    .line 437
    :goto_8
    if-ltz v1, :cond_f

    const-string/jumbo v12, "\r\n"

    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 439
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v12, 0x0

    invoke-static {v7, v12, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-virtual {v4, v7}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    goto :goto_8

    .line 442
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 443
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;Ljava/util/Properties;)V

    goto/16 :goto_6

    .line 475
    :catch_4
    move-exception v1

    goto/16 :goto_0

    .line 455
    :cond_10
    iget-object v6, v1, Lcom/viber/voip/util/upload/a/g;->a:Ljava/lang/String;

    iget-object v7, v1, Lcom/viber/voip/util/upload/a/g;->b:Ljava/lang/String;

    iget-object v8, v1, Lcom/viber/voip/util/upload/a/g;->e:Ljava/util/Properties;

    iget-object v9, v1, Lcom/viber/voip/util/upload/a/g;->c:Ljava/io/InputStream;

    iget v10, v1, Lcom/viber/voip/util/upload/a/g;->d:I

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/viber/voip/util/upload/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    .line 370
    :catch_5
    move-exception v11

    goto/16 :goto_3

    :cond_11
    move v4, v1

    goto/16 :goto_2
.end method
