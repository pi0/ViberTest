.class public Lcom/viber/error/report/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0xe

    sput v0, Lcom/viber/error/report/a;->a:I

    return-void
.end method

.method private static a()V
    .locals 7

    .prologue
    .line 105
    sget-object v1, Lcom/viber/voip/w;->h:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 108
    new-instance v2, Lcom/viber/error/report/b;

    invoke-direct {v2}, Lcom/viber/error/report/b;-><init>()V

    .line 113
    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 115
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete old crash file copy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/viber/error/report/a;->a(Ljava/lang/String;)V

    .line 118
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    sget v0, Lcom/viber/error/report/a;->a:I

    sget-object v1, Lcom/viber/voip/w;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/error/report/a;->a(ILjava/lang/String;)V

    .line 123
    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 127
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int/lit8 v0, p0, 0x18

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 132
    array-length v4, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v1, v0

    .line 133
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_0

    .line 134
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to delete file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/viber/error/report/a;->a(Ljava/lang/String;)V

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Files were not deleted, directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " does\'nt exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/error/report/a;->a(Ljava/lang/String;)V

    .line 142
    :cond_2
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 98
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/viber/voip/w;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/viber/voip/w;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {v0, v1}, Lcom/viber/error/report/a;->a(Ljava/io/File;Ljava/io/File;)V

    .line 102
    return-void
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 33
    :try_start_0
    invoke-static {p0}, Lcom/viber/error/report/a;->a(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/viber/voip/ViberApplication;->flushLogger()V

    .line 38
    sget-object v3, Lcom/viber/voip/w;->e:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->getUdid()Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/viber/voip/w;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "viber_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/viber/voip/w;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_log.zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 44
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/viber/voip/w;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 49
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 51
    if-eqz v5, :cond_4

    .line 52
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v7, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v7, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move v2, v1

    .line 55
    :goto_0
    array-length v0, v5

    if-ge v2, v0, :cond_3

    .line 56
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    move v0, v1

    .line 62
    :goto_1
    array-length v9, v8

    if-ge v0, v9, :cond_2

    .line 63
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v5, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v8, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v7}, Lcom/viber/error/report/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_1
    aget-object v0, v5, v2

    invoke-static {v3, v0, v7}, Lcom/viber/error/report/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 55
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 69
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 70
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 73
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attachedFile size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/error/report/a;->a(Ljava/lang/String;)V

    .line 76
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    sget v2, Lcom/viber/error/report/d;->t:I

    .line 80
    const-string/jumbo v3, "android.intent.extra.EMAIL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string/jumbo v2, "media/image"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string/jumbo v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string/jumbo v2, "Send email using"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uri.fromFile(attachedFile) :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/error/report/a;->a(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/viber/error/report/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_2
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 151
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 152
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 153
    new-instance v2, Ljava/io/File;

    aget-object v3, v1, v0

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v0

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/viber/error/report/a;->a(Ljava/io/File;Ljava/io/File;)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 159
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 162
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 164
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    .line 165
    invoke-virtual {v2, v3, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 167
    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 168
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 170
    :cond_3
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 197
    const/4 v0, 0x3

    const-string/jumbo v1, "ClientReportSender"

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addFileToZip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/error/report/a;->a(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 178
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 182
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 185
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 186
    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 189
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 190
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 194
    :goto_1
    return-void

    .line 192
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "File :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is directory. Ignored!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/error/report/a;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
