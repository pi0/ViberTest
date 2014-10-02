.class Lcom/viber/voip/calls/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fl;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/p;

.field final synthetic b:Lcom/viber/voip/calls/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/a;Lcom/viber/voip/calls/p;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/viber/voip/calls/b;->b:Lcom/viber/voip/calls/a;

    iput-object p2, p0, Lcom/viber/voip/calls/b;->a:Lcom/viber/voip/calls/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 150
    .line 151
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 154
    :cond_0
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 157
    iget-object v1, p0, Lcom/viber/voip/calls/b;->a:Lcom/viber/voip/calls/p;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/viber/voip/calls/b;->a:Lcom/viber/voip/calls/p;

    invoke-interface {v1, v0}, Lcom/viber/voip/calls/p;->a(I)V

    .line 160
    :cond_1
    return-void
.end method
