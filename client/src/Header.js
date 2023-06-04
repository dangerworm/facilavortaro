import { AppBar, Badge, Button, Dialog, DialogActions, DialogContent, DialogContentText, DialogTitle, IconButton, Menu, MenuItem, Toolbar, Typography } from "@mui/material"
import { Box } from "@mui/system";
import { useAuthenticationContext } from "./Contexts/AuthenticationContext";
import PersonIcon from '@mui/icons-material/Person';
import React, { useState } from "react";
import { GoogleLogin } from "@react-oauth/google";

export const Header = () => {
  const { authenticateUser, user, logout } = useAuthenticationContext();

  const [anchorElement, setAnchorElement] = useState();
  const [dialogVisible, setDialogVisible] = useState(false);

  const userMenuOpen = Boolean(anchorElement);

  const handleUserMenuOpen = (event) => {
    setAnchorElement(event.currentTarget);
  }

  const onLoginSuccess = (response) => {
    authenticateUser(response.credential)
    setDialogVisible(false);
  }

  const onLoginError = (response) => {
    console.log("An error occurred connecting to the Google API");
  }

  const handleUserMenuClose = () => {
    setAnchorElement(undefined);
  }

  const handleLogout = () => {
    logout();
    handleUserMenuClose();
  }

  return (
    <>
      <AppBar>
        <Toolbar
          sx={{
            pr: '24px', // keep right padding when drawer closed
          }}
        >
          <Typography
            component="h1"
            variant="h6"
            color="inherit"
            noWrap
            sx={{ flexGrow: 1 }}
          >
          </Typography>
          <IconButton
            color="inherit"
            onClick={handleUserMenuOpen}
            aria-controls={userMenuOpen ? 'user-menu' : undefined}
            aria-haspopup={true}
            aria-expanded={userMenuOpen ? true : undefined}>
            <Badge badgeContent={0} color="secondary">
              {user?.picture ? (
                <Box
                  component="img"
                  sx={{
                    borderRadius: '50%',
                    height: 50,
                    width: 50,
                    maxHeight: { xs: 50, md: 100 },
                    maxWidth: { xs: 50, md: 100 },
                  }}
                  src={user.picture} />
              ) : (
                <PersonIcon />
              )}
            </Badge>
          </IconButton>
          <Menu
            id='user-menu'
            anchorEl={anchorElement}
            open={userMenuOpen}
            onClose={handleUserMenuClose}
            MenuListProps={{
              'aria-labelledby': 'basic-button',
            }}>
            {!user && (
              <MenuItem onClick={() => setDialogVisible(true)}>Log in</MenuItem>
            )}
            {user && (
              <MenuItem onClick={handleLogout}>Log out</MenuItem>
            )}
          </Menu>
        </Toolbar>
      </AppBar>
      <Dialog
        open={dialogVisible}
        onClose={() => setDialogVisible(false)}
        aria-labelledby="alert-dialog-title"
        aria-describedby="alert-dialog-description"
      >
        <DialogTitle id="alert-dialog-title">{"Ensalutu"}</DialogTitle>
        <DialogContent style={{ width: '30em' }}>
          <DialogContentText id="alert-dialog-description">
            Bonvolu ensaluti per via Google-konto.
            <GoogleLogin onSuccess={onLoginSuccess} onError={onLoginError} />
          </DialogContentText>
        </DialogContent>
        <DialogActions>
          <Button onClick={() => setDialogVisible(false)}>Cancel</Button>
        </DialogActions>
      </Dialog>
    </>
  );
}