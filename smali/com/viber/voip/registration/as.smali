.class Lcom/viber/voip/registration/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/d/d;


# instance fields
.field final synthetic a:[Lcom/viber/voip/registration/CountryCode;

.field final synthetic b:[Ljava/lang/Exception;

.field final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field final synthetic d:Lcom/viber/voip/registration/ar;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/ar;[Lcom/viber/voip/registration/CountryCode;[Ljava/lang/Exception;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/viber/voip/registration/as;->d:Lcom/viber/voip/registration/ar;

    iput-object p2, p0, Lcom/viber/voip/registration/as;->a:[Lcom/viber/voip/registration/CountryCode;

    iput-object p3, p0, Lcom/viber/voip/registration/as;->b:[Ljava/lang/Exception;

    iput-object p4, p0, Lcom/viber/voip/registration/as;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-static {}, Lcom/viber/voip/registration/SelectCountryActivity;->a()Ljava/util/List;

    move-result-object v3

    .line 93
    if-eqz v3, :cond_2

    move v1, v2

    .line 94
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 95
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/CountryCode;

    .line 96
    invoke-virtual {v0}, Lcom/viber/voip/registration/CountryCode;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "US"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    iget-object v1, p0, Lcom/viber/voip/registration/as;->a:[Lcom/viber/voip/registration/CountryCode;

    aput-object v0, v1, v2

    .line 104
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/registration/as;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 105
    return-void

    .line 94
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/registration/as;->b:[Ljava/lang/Exception;

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Data receive failed status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v2

    goto :goto_1
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcom/viber/voip/registration/aw;

    invoke-direct {v0, p1}, Lcom/viber/voip/registration/aw;-><init>(Ljava/io/InputStream;)V

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/registration/as;->a:[Lcom/viber/voip/registration/CountryCode;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/viber/voip/registration/aw;->a()Lcom/viber/voip/registration/CountryCode;

    move-result-object v0

    aput-object v0, v1, v2

    .line 66
    iget-object v0, p0, Lcom/viber/voip/registration/as;->a:[Lcom/viber/voip/registration/CountryCode;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 67
    invoke-static {}, Lcom/viber/voip/registration/SelectCountryActivity;->a()Ljava/util/List;

    move-result-object v4

    .line 68
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/as;->a:[Lcom/viber/voip/registration/CountryCode;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/as;->a:[Lcom/viber/voip/registration/CountryCode;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/viber/voip/registration/CountryCode;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v2, v3

    .line 69
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 70
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/CountryCode;

    .line 71
    iget-object v5, p0, Lcom/viber/voip/registration/as;->a:[Lcom/viber/voip/registration/CountryCode;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/viber/voip/registration/CountryCode;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/viber/voip/registration/CountryCode;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    iget-object v1, p0, Lcom/viber/voip/registration/as;->a:[Lcom/viber/voip/registration/CountryCode;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/viber/voip/registration/CountryCode;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/registration/CountryCode;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    :goto_1
    iget-object v1, p0, Lcom/viber/voip/registration/as;->a:[Lcom/viber/voip/registration/CountryCode;

    const/4 v2, 0x0

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/viber/voip/registration/as;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 87
    return-void

    :cond_1
    move-object v0, v1

    .line 69
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    iget-object v1, p0, Lcom/viber/voip/registration/as;->b:[Ljava/lang/Exception;

    aput-object v0, v1, v3

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
