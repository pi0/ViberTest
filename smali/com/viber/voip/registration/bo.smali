.class Lcom/viber/voip/registration/bo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/registration/bp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/registration/bo;->b:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/viber/voip/registration/bo;->a:Ljava/io/InputStream;

    .line 27
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/viber/voip/registration/bo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/bp;

    .line 90
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/viber/voip/registration/bp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 45
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 46
    iget-object v0, p0, Lcom/viber/voip/registration/bo;->a:Ljava/io/InputStream;

    const-string/jumbo v2, "utf-8"

    invoke-interface {v4, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    move-object v2, v1

    move v3, v0

    move-object v0, v1

    .line 54
    :goto_0
    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    .line 55
    packed-switch v3, :pswitch_data_0

    .line 79
    :cond_0
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :pswitch_0
    :try_start_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 61
    :pswitch_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v5

    .line 62
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 63
    const-string/jumbo v6, "key"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v5, :cond_1

    move-object v0, v3

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const-string/jumbo v5, "string"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "@string/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "0"

    invoke-direct {p0, v0, v3, v5, v6}, Lcom/viber/voip/registration/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    .line 69
    goto :goto_1

    :pswitch_2
    move-object v2, v1

    .line 75
    goto :goto_1

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/registration/bo;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 86
    return-void

    .line 81
    :catch_1
    move-exception v0

    .line 82
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/registration/bo;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method a(Lcom/viber/voip/registration/bp;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/voip/registration/bo;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/viber/voip/registration/bo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    return-void
.end method

.method c()V
    .locals 0

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/viber/voip/registration/bo;->b()V

    .line 109
    return-void
.end method
