.class final Lcom/viber/service/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hj;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/viber/service/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/viber/service/d;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/viber/service/d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/viber/service/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/service/d;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/viber/service/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2, p3}, Lcom/viber/service/b;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;)V

    .line 134
    return-void
.end method
