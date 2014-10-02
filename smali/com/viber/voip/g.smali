.class Lcom/viber/voip/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/AddFriendPreview;


# direct methods
.method constructor <init>(Lcom/viber/voip/AddFriendPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/viber/voip/g;->a:Lcom/viber/voip/AddFriendPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/viber/voip/g;->a:Lcom/viber/voip/AddFriendPreview;

    invoke-static {v0}, Lcom/viber/voip/AddFriendPreview;->a(Lcom/viber/voip/AddFriendPreview;)V

    .line 123
    return-void
.end method
