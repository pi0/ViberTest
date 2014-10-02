.class final Lcom/viber/voip/messages/extras/fb/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/l;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/r;->a:Lcom/viber/voip/settings/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/r;->a:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "show_facebook_like_dialog"

    invoke-interface {v0, v1, p2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 245
    return-void
.end method
