.class Lcom/viber/voip/contacts/c/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/viber/voip/contacts/c/r;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/viber/voip/contacts/c/r;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/viber/voip/contacts/c/s;->a:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/viber/voip/contacts/c/s;->b:Lcom/viber/voip/contacts/c/r;

    .line 141
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 150
    if-nez p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    instance-of v1, p1, Lcom/viber/voip/contacts/c/s;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/viber/voip/contacts/c/s;->a:Ljava/lang/String;

    check-cast p1, Lcom/viber/voip/contacts/c/s;

    iget-object v2, p1, Lcom/viber/voip/contacts/c/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DownloadItem [value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
