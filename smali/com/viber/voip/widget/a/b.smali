.class Lcom/viber/voip/widget/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/viber/voip/widget/a/b;->a:Lcom/viber/voip/widget/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/widget/a/b;->a:Lcom/viber/voip/widget/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/widget/a/a;->a(Lcom/viber/voip/widget/a/a;Z)V

    .line 43
    return-void
.end method
