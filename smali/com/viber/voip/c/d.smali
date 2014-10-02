.class Lcom/viber/voip/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/c/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/viber/voip/c/d;->a:Lcom/viber/voip/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/viber/voip/c/d;->a:Lcom/viber/voip/c/b;

    invoke-static {v0}, Lcom/viber/voip/c/b;->c(Lcom/viber/voip/c/b;)V

    .line 172
    return-void
.end method
