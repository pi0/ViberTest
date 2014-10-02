.class public Lcom/viber/voip/settings/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/settings/m;


# instance fields
.field protected a:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field final synthetic b:Lcom/viber/voip/settings/n;


# direct methods
.method protected constructor <init>(Lcom/viber/voip/settings/n;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/viber/voip/settings/o;->b:Lcom/viber/voip/settings/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p2, p0, Lcom/viber/voip/settings/o;->a:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 176
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/viber/voip/settings/o;->a:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iget-object v1, p0, Lcom/viber/voip/settings/o;->b:Lcom/viber/voip/settings/n;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 181
    return-void
.end method
