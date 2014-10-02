.class final Lcom/viber/voip/util/upload/v;
.super Lcom/viber/voip/util/upload/aa;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/util/upload/aa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/viber/voip/util/http/HttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    return-void
.end method

.method public b(Landroid/net/Uri;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    invoke-static {p1}, Lcom/viber/voip/util/upload/n;->c(Landroid/net/Uri;)Landroid/net/Uri;

    .line 167
    return-void
.end method
