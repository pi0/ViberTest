.class public Lcom/viber/voip/ui/style/a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# static fields
.field private static a:Lcom/viber/voip/util/hs;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/viber/voip/ui/style/a;->b:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/viber/voip/ui/style/a;->c:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static a(Lcom/viber/voip/util/hs;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    sput-object p0, Lcom/viber/voip/ui/style/a;->a:Lcom/viber/voip/util/hs;

    .line 41
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/voip/ui/style/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/ui/style/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    sget-object v0, Lcom/viber/voip/ui/style/a;->a:Lcom/viber/voip/util/hs;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/viber/voip/ui/style/a;->a:Lcom/viber/voip/util/hs;

    invoke-virtual {p0}, Lcom/viber/voip/ui/style/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/ui/style/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/util/hs;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method
