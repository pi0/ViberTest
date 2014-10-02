.class Lcom/viber/voip/settings/ui/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/j;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/viber/voip/settings/ui/ag;->a:Lcom/viber/voip/settings/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-static {}, Lcom/viber/voip/stickers/e/c;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/viber/voip/stickers/e/c;->a(I)V

    .line 118
    invoke-static {}, Lcom/viber/voip/stickers/e/c;->c()V

    .line 119
    const/4 v0, 0x0

    return v0
.end method
